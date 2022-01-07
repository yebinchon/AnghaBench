
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_17__ {TYPE_1__* chunk_rel; } ;
struct TYPE_12__ {int parallel_aware; int parallel_workers; scalar_t__ parallel_safe; int param_info; int pathtarget; TYPE_1__* parent; int pathtype; } ;
struct TYPE_14__ {TYPE_10__ path; int custom_paths; int * methods; scalar_t__ flags; } ;
struct TYPE_16__ {int reverse; TYPE_2__ cpath; int compressed_pathkeys; TYPE_5__* info; } ;
struct TYPE_15__ {scalar_t__ parallel_safe; int param_info; } ;
struct TYPE_13__ {int reltarget; } ;
typedef int PlannerInfo ;
typedef TYPE_3__ Path ;
typedef TYPE_4__ DecompressChunkPath ;
typedef TYPE_5__ CompressionInfo ;


 int Assert (int) ;
 int NIL ;
 int T_CustomPath ;
 int T_CustomScan ;
 int cost_decompress_chunk (TYPE_10__*,TYPE_3__*) ;
 int decompress_chunk_path_methods ;
 int list_make1 (TYPE_3__*) ;
 scalar_t__ newNode (int,int ) ;

__attribute__((used)) static DecompressChunkPath *
decompress_chunk_path_create(PlannerInfo *root, CompressionInfo *info, int parallel_workers,
        Path *compressed_path)
{
 DecompressChunkPath *path;

 path = (DecompressChunkPath *) newNode(sizeof(DecompressChunkPath), T_CustomPath);

 path->info = info;

 path->cpath.path.pathtype = T_CustomScan;
 path->cpath.path.parent = info->chunk_rel;
 path->cpath.path.pathtarget = info->chunk_rel->reltarget;

 path->cpath.path.param_info = compressed_path->param_info;

 path->cpath.flags = 0;
 path->cpath.methods = &decompress_chunk_path_methods;

 Assert(parallel_workers == 0 || compressed_path->parallel_safe);

 path->cpath.path.parallel_aware = 0;
 path->cpath.path.parallel_safe = compressed_path->parallel_safe;
 path->cpath.path.parallel_workers = parallel_workers;

 path->cpath.custom_paths = list_make1(compressed_path);
 path->reverse = 0;
 path->compressed_pathkeys = NIL;
 cost_decompress_chunk(&path->cpath.path, compressed_path);

 return path;
}
