
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int pathtype; int type; } ;
struct TYPE_9__ {TYPE_2__ path; int custom_paths; int * methods; } ;
struct TYPE_11__ {TYPE_1__ cpath; int hypertable_relid; int hypertable_rti; int * mtpath; } ;
typedef TYPE_2__ Path ;
typedef int Oid ;
typedef int ModifyTablePath ;
typedef int Index ;
typedef TYPE_3__ ChunkDispatchPath ;


 int T_CustomPath ;
 int T_CustomScan ;
 int chunk_dispatch_path_methods ;
 int list_make1 (TYPE_2__*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ palloc0 (int) ;

Path *
ts_chunk_dispatch_path_create(ModifyTablePath *mtpath, Path *subpath, Index hypertable_rti,
         Oid hypertable_relid)
{
 ChunkDispatchPath *path = (ChunkDispatchPath *) palloc0(sizeof(ChunkDispatchPath));

 memcpy(&path->cpath.path, subpath, sizeof(Path));
 path->cpath.path.type = T_CustomPath;
 path->cpath.path.pathtype = T_CustomScan;
 path->cpath.methods = &chunk_dispatch_path_methods;
 path->cpath.custom_paths = list_make1(subpath);
 path->mtpath = mtpath;
 path->hypertable_rti = hypertable_rti;
 path->hypertable_relid = hypertable_relid;

 return &path->cpath.path;
}
