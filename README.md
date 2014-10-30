# Discourse spreadsheet plugin

This plugin allows to embed a Google Drive Spreadsheet in a post.

## Usage

Once installed, you can place any -Anyone with the link-shared Google Drive Spreadsheet URL like https://docs.google.com/spreadsheet/ccc?key=xxx&usp=sharing&authkey=xxx in a post and this will show an embed editable Spreadsheet.

![](https://raw.githubusercontent.com/tcreativo/docs-images/master/scrshot7.png)
![](https://raw.githubusercontent.com/tcreativo/docs-images/master/scrshot8.png)

## Known issues

- When you enter in a topic that contains a post with an embed Google Drive Spreadsheet, no matter where is that post, the view shows you automatically the first post unless that post with the embed is not charged in the DOM.

## Installation

As seen in a [how-to on meta.discourse.org](https://meta.discourse.org/t/advanced-troubleshooting-with-docker/15927#Example:%20Install%20a%20plugin), simply **add the plugin's repo url to your container's app.yml file**:

```yml
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - mkdir -p plugins
          - git clone https://github.com/discourse/docker_manager.git
          - git clone https://github.com/tcreativo/plugin_discourse_spreadsheet.git
```
* Rebuild the container

```
cd /var/docker
git pull
./launcher rebuild app
```

## Authors
- Produced by [Territorio creativo S.L.](http://www.territoriocreativo.es/)

- Developed by [Vairix](http://www.vairix.com/)

## Copyright / License

Copyright 2014 Territorio creativo S.L.

Licensed under the GNU General Public License Version 2.0 (or later); you may not use this work except in compliance with the License. You may obtain a copy of the License in the LICENSE file, or at:

[http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt](http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
