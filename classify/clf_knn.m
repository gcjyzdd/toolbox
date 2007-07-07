% Create a k nearest neighbor classifier.
%
% USAGE
%  clf = clf_knn( p, k, metric )
%
% INPUTS
%  p       - data dimension
%  k       - number of nearest neighbors to look at
%  metric - [] distance function, squared euclidean by default
%
% OUTPUTS
%  clf     - model ready to be trained
%
% EXAMPLE
%
% See also NFOLDXVAL, CLF_KNN_TRAIN, CLF_KNN_FWD

% Piotr's Image&Video Toolbox      Version NEW
% Written and maintained by Piotr Dollar    pdollar-at-cs.ucsd.edu
% Please email me if you find bugs, or have suggestions or questions!

function clf = clf_knn( p, k, metric )

if( nargin<3 ); metric = []; end

clf.p = p;
clf.type = 'knn';
clf.k = k;
clf.metric = metric;
clf.fun_train = @clf_knn_train;
clf.fun_fwd = @clf_knn_fwd;
