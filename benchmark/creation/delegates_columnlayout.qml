import QtQuick 2.0
import QtQuick.Layouts 1.0

Item {
    id: root;
    property int count: 20;
    property int staticCount: 1000;

    property real t;
    NumberAnimation on t { from: 0; to: 1; duration: 1000; loops: Animation.Infinite }
    onTChanged: {
        repeater.model = 0;
        repeater.model = root.count
    }

    Component.onCompleted: repeater.model = root.count

    Repeater {
        id: repeater
        ColumnLayout {
            x: Math.random() * (root.width - width)
            y: Math.random() * (root.height - height)
            Rectangle {
                width: 50
                height: 10
                color: "red"
            }
            Rectangle {
                width: 50
                height: 10
                color: "red"
            }
            Rectangle {
                width: 50
                height: 10
                color: "red"
            }
            Rectangle {
                width: 50
                height: 10
                color: "red"
            }
            Rectangle {
                width: 50
                height: 10
                color: "red"
            }
        }
    }
}
