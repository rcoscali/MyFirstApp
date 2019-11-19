import QtQuick 2.4
import Qt.labs.calendar 1.0
import Qt.labs.qmlmodels 1.0

Item {
    width: 400
    height: 400

    Column {
        id: column
        x: 0
        y: 69
        width: 382
        height: 318
    }

    Text {
        id: text1
        x: 0
        y: 0
        width: 382
        height: 63
        color: "#1f8941"
        text: qsTr("Remote Client")
        style: Text.Raised
        font.capitalization: Font.SmallCaps
        font.bold: true
        fontSizeMode: Text.HorizontalFit
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 34
    }

    Connections {
        target: text1
        onClicked: print("clicked")
    }
}
