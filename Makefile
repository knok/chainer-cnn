#
#
DATA_URL=https://www.cs.cornell.edu/people/pabo/movie-review-data/rt-polaritydata.tar.gz

input.dat: rt-polaritydata/rt-polarity.neg
	sed -e 's/^/0 /' rt-polaritydata/rt-polarity.neg > input.dat
	sed -e 's/^/1 /' rt-polaritydata/rt-polarity.pos >> input.dat

rt-polaritydata/rt-polarity.neg: rt-polaritydata.tar.gz
	tar xf rt-polaritydata.tar.gz

rt-polaritydata.tar.gz:
	wget $(DATA_URL)

