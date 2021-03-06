--Copyright 2008-2013 Einstein & Werni
--
--Diese Datei ist Bestandteil von mtarl.
--
--mtarl ist freie Software:
--Sie können weiterverteilen und/oder modifizieren unter den Bedingungen
--der GNU General Public License, wie von der Free Software Foundation,
--entweder gemäß Version 3 der Lizenz oder (nach Ihrer Option) jeder
--späteren Version veröffentlicht.
--
--mtarl wird verteilt, in der Hoffnung, dass es nützlich sein wird, aber
--ohne jede Garantie; ohne selbst der stillschweigenden Garantie der
--Marktgängigkeit oder Eignung für einen bestimmten Zweck. Finden Sie unter
--der GNU General Public License für weitere Details.
--
--Eine Kopie der GNU General Public License finden Sie unter: http://www.gnu.org/licenses/gpl.txt



function versionResourceStart()
	outputDebug("version.lua start...")
	versiondisplay = textCreateDisplay()
	local versiontext = textCreateTextItem("MTA:RL Version: 1.2.4", 0.002, 0.985, "low", 255, 255, 255, 150, 1)
	textDisplayAddText(versiondisplay, versiontext)   
end
addEventHandler('onResourceStart', getResourceRootElement(), versionResourceStart)

function showMTARLVersion(player, bool)
	if bool == true then
		textDisplayAddObserver(versiondisplay, player)
		return true
	elseif bool == false then
		textDisplayRemoveObserver(versiondisplay, player)
		return true
	end
	return false
end
