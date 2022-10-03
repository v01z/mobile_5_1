import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import "Figures.js" as Figures

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Homework 5 part 1")

    ComboBox{
        id: comboBox
        anchors.top: parent.top
        anchors.topMargin: height / 4
        anchors.horizontalCenter: parent.horizontalCenter
        model: [qsTr("star"), qsTr("ring"), qsTr("house"), qsTr("sandclock")]

        onCurrentIndexChanged: {
            canv.requestPaint()
        }
    }

    Canvas {
        id: canv
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: comboBox.bottom
        anchors.margins: 10

        onPaint: {

            Figures.choosing_figure(comboBox.currentIndex, getContext("2d"),
                parent.width/2, parent.height/2, parent.width/7, parent.width, parent.height)
        }
    }
}
