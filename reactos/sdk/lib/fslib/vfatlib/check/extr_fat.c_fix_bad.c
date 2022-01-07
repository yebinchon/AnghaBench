
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {int data_clusters; int cluster_size; int fat; } ;
struct TYPE_10__ {int value; } ;
typedef TYPE_1__ FAT_ENTRY ;
typedef TYPE_2__ DOS_FS ;


 int FAT_IS_BAD (TYPE_2__*,int ) ;
 int cluster_start (TYPE_2__*,int) ;
 int fs_test (int ,int ) ;
 int get_fat (TYPE_1__*,int ,int,TYPE_2__*) ;
 int get_owner (TYPE_2__*,int) ;
 int printf (char*,...) ;
 int set_fat (TYPE_2__*,int,int) ;
 scalar_t__ verbose ;

void fix_bad(DOS_FS * fs)
{
    uint32_t i;

    if (verbose)
 printf("Checking for bad clusters.\n");
    for (i = 2; i < fs->data_clusters + 2; i++) {
 FAT_ENTRY curEntry;
 get_fat(&curEntry, fs->fat, i, fs);

 if (!get_owner(fs, i) && !FAT_IS_BAD(fs, curEntry.value))
     if (!fs_test(cluster_start(fs, i), fs->cluster_size)) {
  printf("Cluster %lu is unreadable.\n", (unsigned long)i);
  set_fat(fs, i, -2);
     }
    }
}
