/*
 * Copyright (c) 2011-2015 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.4

Page {
    Container {
        id: master_container
        property bool image_visible: false
        property string def_text :"this is it"
        ImageView {
          id: imgViewer
          imageSource: "asset:///images/day.jpg"
          visible: false
            accessibility.labelledBy: [ imgViewer ]
        } 
        Button {
            id: btn2
            verticalAlignment: VerticalAlignment.Fill
            text: "Try to load an image"
            onClicked: {
                if (!master_container.image_visible)
                {
                    master_container.image_visible = true
                    imgViewer.visible = true
                    text = parent.def_text
                }
                else 
                {
                    master_container.image_visible = false
                    imgViewer.visible = false
                    text = "Try to load an image"
                }
            }
        }
    }
}
