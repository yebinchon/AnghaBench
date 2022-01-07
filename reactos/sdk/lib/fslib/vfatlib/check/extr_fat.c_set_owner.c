
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {int ** cluster_owner; } ;
typedef TYPE_1__ DOS_FS ;
typedef int DOS_FILE ;


 int die (char*) ;

void set_owner(DOS_FS * fs, uint32_t cluster, DOS_FILE * owner)
{
    if (fs->cluster_owner == ((void*)0))
 die("Internal error: attempt to set owner in non-existent table");

    if (owner && fs->cluster_owner[cluster]
 && (fs->cluster_owner[cluster] != owner))
 die("Internal error: attempt to change file owner");
    fs->cluster_owner[cluster] = owner;
}
