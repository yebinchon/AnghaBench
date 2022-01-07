
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_24__ {int parallel_aware; } ;
struct TYPE_23__ {int * query_pathkeys; } ;
struct TYPE_22__ {scalar_t__ consider_parallel; } ;
struct TYPE_21__ {int * compressed_pathkeys; scalar_t__ can_pushdown_sort; } ;
typedef TYPE_1__ SortInfo ;
typedef TYPE_2__ RelOptInfo ;
typedef TYPE_3__ PlannerInfo ;
typedef TYPE_4__ Path ;
typedef int List ;
typedef int CompressionInfo ;


 int Assert (int ) ;
 int add_partial_path (TYPE_2__*,TYPE_4__*) ;
 int add_path (TYPE_2__*,TYPE_4__*) ;
 int build_compressed_scan_pathkeys (TYPE_1__*,TYPE_3__*,int *,int *) ;
 int check_index_predicates (TYPE_3__*,TYPE_2__*) ;
 int create_index_paths (TYPE_3__*,TYPE_2__*) ;
 TYPE_4__* create_seqscan_path (TYPE_3__*,TYPE_2__*,int *,int) ;

__attribute__((used)) static void
create_compressed_scan_paths(PlannerInfo *root, RelOptInfo *compressed_rel, int parallel_workers,
        CompressionInfo *info, SortInfo *sort_info)
{
 Path *compressed_path;


 compressed_path = create_seqscan_path(root, compressed_rel, ((void*)0), 0);
 add_path(compressed_rel, compressed_path);


 if (compressed_rel->consider_parallel && parallel_workers > 0)
 {
  compressed_path = create_seqscan_path(root, compressed_rel, ((void*)0), parallel_workers);
  Assert(compressed_path->parallel_aware);
  add_partial_path(compressed_rel, compressed_path);
 }

 if (sort_info->can_pushdown_sort)
 {





  List *orig_pathkeys = root->query_pathkeys;
  build_compressed_scan_pathkeys(sort_info, root, root->query_pathkeys, info);
  root->query_pathkeys = sort_info->compressed_pathkeys;
  check_index_predicates(root, compressed_rel);
  create_index_paths(root, compressed_rel);
  root->query_pathkeys = orig_pathkeys;
 }
 else
 {
  check_index_predicates(root, compressed_rel);
  create_index_paths(root, compressed_rel);
 }
}
