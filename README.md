# Discovery : Mining Discourse Markers for Unsupervised Sentence Representation Learning

This is a data/code release accompaning this paper:

* Title: "Mining Discourse Markers for Unsupervised Sentence Representation Learning"
* Authors: Damien Sileo, Tim Van de Cruys, Camille Pradel and Philippe Muller
* https://arxiv.org/abs/1903.11850
* To be presented at NAACL 2019


# Contents

The Discovery datasets consists of adjacent sentence pairs (s1,s2) with a discourse marker (y) that occured at the beginning of s2.
They were extracted from the [depcc](https://www.inf.uni-hamburg.de/en/inst/ab/lt/resources/data/depcc.html) web corpus. 

Markers prediction can be used in order to train a sentence encoders. Discourse markers can be considered as noisy labels for various semantic tasks, such as entailment (y=*therefore*), subjectivity analysis (y=*personally*) or sentiment analysis (y=*sadly*), similarity (y=*similarly*), typicality, (y=*curiously*) ... 

The specificity of this dataset is the diversity of the markers, since [previously used data](https://arxiv.org/abs/1710.04334) used only ~10 imbalanced classes.
In this repository, you can find:
* a list of the 174 discourse markers we obtained
* a `Base` version of our dataset with 1.74 million pairs (10k exemples per marker)
* a `Big` version with 3.4 million pairs
* a `Hard` version with 1.74 million pairs where the connective couldn't be predicted with a fasttext linear model


#### Examples from the Discovery dataset:
s1 | s2 | y
---- | ---- | ----
The  motivations  for  playing  are  vastly  different  ,  and  yet  Spin  the  Bottle  manages  to  meet  the  needs  of  all  its  players  . | It  is  a  well  crafted  game  . | truly,
Prefiguring  The  General  many  years  later  ,  Bernard  liked  nothing  better  than  to  cock  a  snoot  at  the  law  . | Men  working  on  a  bog  ,  less  than  a  mile  from  the  Kirwan  farm  ,  dug  up  a  human  torso  . | eventually,
Think  a  certain  vertical  market  or  knowledge  about  multilocations  '  unique  needs  . | Ernest  's  strength  lay  in  the  multilocation  arena  and  gives  Birch  a  new  capability  . | indeed,
@  Sklivvz  :  but  you  are  implicitly  using  one  such  interpretation  yourself  . | One  that  tells  you  that  it  's  unphysical  to  ask  anything  except  measurements  . | namely,
Perhaps  the  Jeanneau  's  are  a  bargain  compared  to  similarly  capable  boats  from  B  or  C.  . | Seattle  ,  the  prices  for  the  36  and  39  went  down  about  20G  ,  a  39  now  sells  for  a  bit  more  than  the  36  did  . | locally,

# Instructions

Run the `bash get_data.bash` in `data`

`demo.ipynb` shows an example of how to read the data and export it in a different format

# Citation
```
@InProceedings{N19-2327,
  author = 	"Sileo, Damien and Van-De-Cruys, Tim  and Pradel, Camille and Muller, Philippe",
  title = 	"Mining Discourse Markers for Unsupervised Sentence Representation Learning",
  booktitle = 	"Proceedings of the 2019 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies, Volume 1 (Long Papers)",
  year = 	"2019",
  publisher = 	"Association for Computational Linguistics",
  location = 	"Minneapolis, Minesotta",
}
```
<div align="center"><img src="https://raw.githubusercontent.com/sileod/Discovery/master/images/discovery_markers.png" alt="magnitude" height="700"></div>
The list of markers we used. PDTB markers are black, markers discovered in our work are red


# Contact
For further information, you can contact:

damien dot sileo at synapse-fr dot com
