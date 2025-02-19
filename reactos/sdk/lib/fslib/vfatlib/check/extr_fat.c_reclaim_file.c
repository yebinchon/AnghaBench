
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef int off_t ;
struct TYPE_17__ {int size; void* starthi; void* start; } ;
struct TYPE_16__ {int data_clusters; int fat_bits; unsigned long long cluster_size; int fat; } ;
struct TYPE_15__ {int value; } ;
typedef TYPE_1__ FAT_ENTRY ;
typedef TYPE_2__ DOS_FS ;
typedef int DOS_FILE ;
typedef TYPE_3__ DIR_ENT ;


 scalar_t__ FAT_IS_BAD (TYPE_2__*,int) ;
 int* alloc (int) ;
 int alloc_rootdir_entry (TYPE_2__*,TYPE_3__*,char*,int) ;
 int die (char*) ;
 int free (int*) ;
 int fs_write (int ,int,TYPE_3__*) ;
 int get_fat (TYPE_1__*,int ,int,TYPE_2__*) ;
 int * get_owner (TYPE_2__*,int) ;
 void* htole16 (int) ;
 int htole32 (unsigned long long) ;
 unsigned long long le32toh (int ) ;
 int memset (int*,int ,int) ;
 int next_cluster (TYPE_2__*,int) ;
 int printf (char*,...) ;
 scalar_t__ rw ;
 int set_fat (TYPE_2__*,int,int) ;
 int tag_free (TYPE_2__*,int *,int*,int) ;
 scalar_t__ verbose ;

void reclaim_file(DOS_FS * fs)
{
    DOS_FILE orphan;
    int reclaimed, files;
    int changed = 0;
    uint32_t i, next, walk;
    uint32_t *num_refs = ((void*)0);
    uint32_t total_num_clusters;

    if (verbose)
 printf("Reclaiming unconnected clusters.\n");

    total_num_clusters = fs->data_clusters + 2;
    num_refs = alloc(total_num_clusters * sizeof(uint32_t));
    memset(num_refs, 0, (total_num_clusters * sizeof(uint32_t)));





    for (i = 2; i < total_num_clusters; i++) {
 FAT_ENTRY curEntry;
 get_fat(&curEntry, fs->fat, i, fs);

 next = curEntry.value;
 if (!get_owner(fs, i) && next && next < fs->data_clusters + 2) {

     FAT_ENTRY nextEntry;
     get_fat(&nextEntry, fs->fat, next, fs);




     if (get_owner(fs, next) || !nextEntry.value ||
  FAT_IS_BAD(fs, nextEntry.value))
  set_fat(fs, i, -1);
     else
  num_refs[next]++;
 }
    }




    do {
 tag_free(fs, &orphan, num_refs, changed);
 changed = 0;


 for (i = 2; i < total_num_clusters; i++) {
     FAT_ENTRY curEntry;
     get_fat(&curEntry, fs->fat, i, fs);

     if (curEntry.value && !FAT_IS_BAD(fs, curEntry.value) &&
  !get_owner(fs, i)) {
  if (!num_refs[curEntry.value]--)
      die("Internal error: num_refs going below zero");
  set_fat(fs, i, -1);
  changed = curEntry.value;
  printf("Broke cycle at cluster %lu in free chain.\n", (unsigned long)i);




  if (num_refs[curEntry.value] == 0)
      break;
     }
 }
    }
    while (changed);





    files = reclaimed = 0;
    for (i = 2; i < total_num_clusters; i++)

 if (get_owner(fs, i) == &orphan && !num_refs[i]) {
     DIR_ENT de;
     off_t offset;
     files++;
     offset = alloc_rootdir_entry(fs, &de, "FSCK%04dREC", 1);
     de.start = htole16(i & 0xffff);
     if (fs->fat_bits == 32)
  de.starthi = htole16(i >> 16);
     for (walk = i; walk > 0 && walk != -1;
   walk = next_cluster(fs, walk)) {
  de.size = htole32(le32toh(de.size) + fs->cluster_size);
  reclaimed++;
     }
     fs_write(offset, sizeof(DIR_ENT), &de);
 }
    if (reclaimed)
 printf("Reclaimed %d unused cluster%s (%llu bytes) in %d chain%s.\n",
        reclaimed, reclaimed == 1 ? "" : "s",
        (unsigned long long)reclaimed * fs->cluster_size, files,
        files == 1 ? "" : "s");




    free(num_refs);
}
