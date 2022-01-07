
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct boot_sector {int* system_id; int media; int fats; int total_sect; int sectors; int hidden; int heads; int secs_track; int reserved; int sector_size; } ;
struct TYPE_3__ {unsigned short cluster_size; int fat_bits; unsigned short root_entries; scalar_t__ data_clusters; scalar_t__ data_start; scalar_t__ root_cluster; scalar_t__ root_start; scalar_t__ fat_size; scalar_t__ fat_start; } ;
typedef TYPE_1__ DOS_FS ;


 int GET_UNALIGNED_W (int ) ;
 scalar_t__ atari_format ;
 char* get_media_descr (int) ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 int printf (char*,...) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void dump_boot(DOS_FS * fs, struct boot_sector *b, unsigned lss)
{
    unsigned short sectors;

    printf("Boot sector contents:\n");
    if (!atari_format) {
 char id[9];
 strncpy(id, (const char *)b->system_id, 8);
 id[8] = 0;
 printf("System ID \"%s\"\n", id);
    } else {


 printf("Serial number 0x%x\n",
        b->system_id[5] | (b->system_id[6] << 8) | (b->
          system_id[7] << 16));
    }
    printf("Media byte 0x%02x (%s)\n", b->media, get_media_descr(b->media));
    printf("%10d bytes per logical sector\n", GET_UNALIGNED_W(b->sector_size));
    printf("%10d bytes per cluster\n", fs->cluster_size);
    printf("%10d reserved sector%s\n", le16toh(b->reserved),
    le16toh(b->reserved) == 1 ? "" : "s");
    printf("First FAT starts at byte %llu (sector %llu)\n",
    (unsigned long long)fs->fat_start,
    (unsigned long long)fs->fat_start / lss);
    printf("%10d FATs, %d bit entries\n", b->fats, fs->fat_bits);
    printf("%10lld bytes per FAT (= %llu sectors)\n", (long long)fs->fat_size,
    (long long)fs->fat_size / lss);
    if (!fs->root_cluster) {
 printf("Root directory starts at byte %llu (sector %llu)\n",
        (unsigned long long)fs->root_start,
        (unsigned long long)fs->root_start / lss);
 printf("%10d root directory entries\n", fs->root_entries);
    } else {
 printf("Root directory start at cluster %lu (arbitrary size)\n",
        (unsigned long)fs->root_cluster);
    }
    printf("Data area starts at byte %llu (sector %llu)\n",
    (unsigned long long)fs->data_start,
    (unsigned long long)fs->data_start / lss);
    printf("%10lu data clusters (%llu bytes)\n",
    (unsigned long)fs->data_clusters,
    (unsigned long long)fs->data_clusters * fs->cluster_size);
    printf("%u sectors/track, %u heads\n", le16toh(b->secs_track),
    le16toh(b->heads));
    printf("%10u hidden sectors\n", atari_format ?

    (((unsigned char *)&b->hidden)[0] |
     ((unsigned char *)&b->hidden)[1] << 8) : le32toh(b->hidden));
    sectors = GET_UNALIGNED_W(b->sectors);
    printf("%10u sectors total\n", sectors ? sectors : le32toh(b->total_sect));
}
