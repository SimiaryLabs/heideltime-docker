# heideltime-docker
A docker container for the HeidelTime servlet `https://github.com/SimiaryLabs/heideltime-servlet`

### Requirements
The war file for the HeidelTime servlet must be installed under the `HeidelTime/` subdirectory.  HeidelTime depends on the [Stanford POS tagger](http://nlp.stanford.edu/software/tagger.shtml).  The POS models should be installed under the `stanford-postagger-full-2015-04-20/models/` subdirectory. HeidelTime also depends on [treetagger](http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/), which should be installed in the `treetagger` subdirectory. 

### Running
This command will run the heideltime service on port 8888:

`docker run -d -e JAVA_OPTS='-Xmx2g' -p 8888:8080 simiary/heideltime`
