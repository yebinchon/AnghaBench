
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int data_clusters; int fat; } ;
struct TYPE_11__ {scalar_t__ value; } ;
typedef TYPE_1__ FAT_ENTRY ;
typedef TYPE_2__ DOS_FS ;
typedef int DOS_FILE ;


 int FAT_IS_BAD (TYPE_2__*,scalar_t__) ;
 int get_fat (TYPE_1__*,int ,int,TYPE_2__*) ;
 int get_owner (TYPE_2__*,int) ;
 int next_cluster (TYPE_2__*,int) ;
 int set_fat (TYPE_2__*,int,int) ;
 int set_owner (TYPE_2__*,int,int *) ;

__attribute__((used)) static void tag_free(DOS_FS * fs, DOS_FILE * owner, uint32_t *num_refs,
       uint32_t start_cluster)
{
    int prev;
    uint32_t i, walk;

    if (start_cluster == 0)
 start_cluster = 2;

    for (i = start_cluster; i < fs->data_clusters + 2; i++) {
 FAT_ENTRY curEntry;
 get_fat(&curEntry, fs->fat, i, fs);


 if (curEntry.value && !FAT_IS_BAD(fs, curEntry.value) &&
     !get_owner(fs, i) && !num_refs[i]) {
     prev = 0;

     for (walk = i; walk != -1; walk = next_cluster(fs, walk)) {
  if (!get_owner(fs, walk)) {
      set_owner(fs, walk, owner);
  } else {




      set_fat(fs, prev, -1);







      num_refs[walk]--;
      break;
  }
  prev = walk;
     }
 }
    }
}
