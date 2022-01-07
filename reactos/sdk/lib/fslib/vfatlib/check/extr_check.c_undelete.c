
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {int size; } ;
struct TYPE_17__ {TYPE_1__ dir_ent; } ;
struct TYPE_16__ {int cluster_size; int data_clusters; int fat; } ;
struct TYPE_15__ {int value; } ;
typedef TYPE_2__ FAT_ENTRY ;
typedef TYPE_3__ DOS_FS ;
typedef TYPE_4__ DOS_FILE ;


 int FSTART (TYPE_4__*,TYPE_3__*) ;
 int MODIFY_START (TYPE_4__*,int ,TYPE_3__*) ;
 int get_fat (TYPE_2__*,int ,int,TYPE_3__*) ;
 int le32toh (int ) ;
 int printf (char*,unsigned long,unsigned long,char*) ;
 int set_fat (TYPE_3__*,int,int) ;

__attribute__((used)) static void undelete(DOS_FS * fs, DOS_FILE * file)
{
    uint32_t clusters, left, prev, walk;

    clusters = left = (le32toh(file->dir_ent.size) + fs->cluster_size - 1) /
 fs->cluster_size;
    prev = 0;

    walk = FSTART(file, fs);

    while (left && (walk >= 2) && (walk < fs->data_clusters + 2)) {

 FAT_ENTRY curEntry;
 get_fat(&curEntry, fs->fat, walk, fs);

 if (!curEntry.value)
     break;

 left--;
 if (prev)
     set_fat(fs, prev, walk);
 prev = walk;
 walk++;
    }
    if (prev)
 set_fat(fs, prev, -1);
    else
 MODIFY_START(file, 0, fs);
    if (left)
 printf("Warning: Did only undelete %lu of %lu cluster%s.\n",
        (unsigned long)clusters - left, (unsigned long)clusters, clusters == 1 ? "" : "s");

}
