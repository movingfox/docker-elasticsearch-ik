# docker-elasticsearch-ik

本專案提供一個簡易的 ElasticSearch Dockerfile 以便提供中文分詞 IK analyzer 支援，並且加入自訂的正體中文分詞詞典。

其中正體中文分詞詞典取自 [https://github.com/sunghau/elasticsearch-analysis-ik-config-traditional-chinese](https://github.com/sunghau/elasticsearch-analysis-ik-config-traditional-chinese)，並刪除其中與 IK analyzer 原自帶詞典重複的檔案。

若需要不同的 ElasticSearch 或是 IK analyzer 版本，只要略加修改 Dockerfile 中分別對應的版本號碼即可。
