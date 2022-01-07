
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int compressed_chunk_id; } ;
struct TYPE_18__ {int table_id; TYPE_1__ fd; } ;
struct TYPE_17__ {int * compressed_rel; int * compressed_rte; } ;
struct TYPE_16__ {size_t simple_rel_array_size; int ** simple_rel_array; TYPE_2__* parse; int ** simple_rte_array; int ** append_rel_array; } ;
struct TYPE_15__ {int rtable; } ;
typedef int RelOptInfo ;
typedef int RangeTblEntry ;
typedef TYPE_3__ PlannerInfo ;
typedef int Oid ;
typedef size_t Index ;
typedef TYPE_4__ CompressionInfo ;
typedef TYPE_5__ Chunk ;
typedef int AppendRelInfo ;


 int AccessShareLock ;
 int * RELOPT_BASEREL ;
 int * build_simple_rel (TYPE_3__*,size_t,int *) ;
 int compressed_rel_setup_equivalence_classes (TYPE_3__*,TYPE_4__*) ;
 int compressed_rel_setup_reltarget (int *,TYPE_4__*,int) ;
 int * decompress_chunk_make_rte (int ,int ) ;
 int lappend (int ,int *) ;
 void* repalloc (int **,int) ;
 TYPE_5__* ts_chunk_get_by_id (int ,int ,int) ;

__attribute__((used)) static void
decompress_chunk_add_plannerinfo(PlannerInfo *root, CompressionInfo *info, Chunk *chunk,
         RelOptInfo *chunk_rel, bool needs_sequence_num)
{
 Index compressed_index = root->simple_rel_array_size;
 Chunk *compressed_chunk = ts_chunk_get_by_id(chunk->fd.compressed_chunk_id, 0, 1);
 Oid compressed_relid = compressed_chunk->table_id;
 RelOptInfo *compressed_rel;

 root->simple_rel_array_size++;
 root->simple_rel_array =
  repalloc(root->simple_rel_array, root->simple_rel_array_size * sizeof(RelOptInfo *));
 root->simple_rte_array =
  repalloc(root->simple_rte_array, root->simple_rel_array_size * sizeof(RangeTblEntry *));






 info->compressed_rte = decompress_chunk_make_rte(compressed_relid, AccessShareLock);
 root->simple_rte_array[compressed_index] = info->compressed_rte;

 root->parse->rtable = lappend(root->parse->rtable, info->compressed_rte);

 root->simple_rel_array[compressed_index] = ((void*)0);




 compressed_rel = build_simple_rel(root, compressed_index, ((void*)0));


 root->simple_rel_array[compressed_index] = compressed_rel;
 info->compressed_rel = compressed_rel;

 compressed_rel_setup_reltarget(compressed_rel, info, needs_sequence_num);
 compressed_rel_setup_equivalence_classes(root, info);
}
