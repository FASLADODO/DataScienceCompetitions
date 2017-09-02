load('anomaly_imputed_valid_clusters_095_knn.mat', 'anomaly_valid_clusters');
load('anomaly_clusters_with_rel_feats_withoutfreq_095_knn.mat', 'best_feature_transformations');
tic
anomaly_final_valid_clusters = cell(100, 1);

for i = 1 : 100
    dataset = anomaly_valid_clusters{i, 1};
    best_transformations = best_feature_transformations{i, 1};
    anomaly_final_valid_clusters{i, 1} = TransformToSymmetricSample(dataset, best_transformations);
end;

save('anomaly_final_valid_set_095_knn.mat', 'anomaly_final_valid_clusters');

toc     % Elapsed time is 8.733750 seconds.