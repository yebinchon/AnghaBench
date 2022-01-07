
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_11__ {int offset; int lfn_offset; scalar_t__ lfn; } ;
struct TYPE_10__ {scalar_t__ data_clusters; } ;
typedef TYPE_1__ DOS_FS ;
typedef TYPE_2__ DOS_FILE ;


 int DELETED_FLAG ;
 scalar_t__ FSTART (TYPE_2__*,TYPE_1__*) ;
 int MODIFY (TYPE_2__*,int ,int ) ;
 int lfn_remove (int ,int ) ;
 int n_files ;
 int * name ;
 scalar_t__ next_cluster (TYPE_1__*,scalar_t__) ;
 int set_owner (TYPE_1__*,scalar_t__,int *) ;

__attribute__((used)) static void drop_file(DOS_FS * fs, DOS_FILE * file)
{
    uint32_t cluster;

    MODIFY(file, name[0], DELETED_FLAG);
    if (file->lfn)
 lfn_remove(file->lfn_offset, file->offset);
    for (cluster = FSTART(file, fs); cluster > 0 && cluster <
  fs->data_clusters + 2; cluster = next_cluster(fs, cluster))
 set_owner(fs, cluster, ((void*)0));
    --n_files;
}
