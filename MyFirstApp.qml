import QtQuick 2.4
import fbx.application 1.0

Application {
    Text {
        id: test
        focus: true
        anchors.centerIn: parent
        text: "Bonjour par un dev sur Freebox !"
        color: "white"
        font.pixelSize: 50
        states: [
            State {
                name: "rouge"
                PropertyChanges {
                    target: test
                    color: "red"
                }
            },
            State {
                name: "bleu"
                PropertyChanges {
                    target: test
                    color: "blue"
                }
            }
        ]
        transitions: Transition {
            SequentialAnimation {
                ColorAnimation {
                    duration: 500
                }
            }
        }
        Keys.onPressed: {
            if (event.key == Qt.Key_Up)
                test.state = "rouge"
            else if (event.key == Qt.Key_Down)
                test.state = "bleu"
            else if (event.key == Qt.Key_Return)
                test.color = "purple"
        }
    }
}
