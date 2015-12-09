#!/bin/sh
scriptdir=`dirname $0`



"cd "C:/Dropbox/_Berkeley/_Fall 2015/PS 239T - Computational Methods/stanford-ner-2015-04-20"



java -mx1500m -cp stanford-ner.jar edu.stanford.nlp.ie.NERServer -loadClassifier classifiers/english.all.3class.distsim.crf.ser.gz -port 8080 -outputFormat inlineXML
