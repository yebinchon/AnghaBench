
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int pathtarget; int parent; int pathtype; int type; } ;
struct TYPE_9__ {TYPE_2__ path; int custom_paths; int * methods; } ;
struct TYPE_11__ {TYPE_1__ cpath; int chunk_relid; } ;
typedef TYPE_2__ Path ;
typedef int Oid ;
typedef TYPE_3__ CompressChunkDmlPath ;


 int T_CustomPath ;
 int T_CustomScan ;
 int compress_chunk_dml_path_methods ;
 int list_make1 (TYPE_2__*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static Path *
compress_chunk_dml_path_create(Path *subpath, Oid chunk_relid)
{
 CompressChunkDmlPath *path = (CompressChunkDmlPath *) palloc0(sizeof(CompressChunkDmlPath));

 memcpy(&path->cpath.path, subpath, sizeof(Path));
 path->cpath.path.type = T_CustomPath;
 path->cpath.path.pathtype = T_CustomScan;
 path->cpath.path.parent = subpath->parent;
 path->cpath.path.pathtarget = subpath->pathtarget;

 path->cpath.methods = &compress_chunk_dml_path_methods;
 path->cpath.custom_paths = list_make1(subpath);
 path->chunk_relid = chunk_relid;

 return &path->cpath.path;
}
