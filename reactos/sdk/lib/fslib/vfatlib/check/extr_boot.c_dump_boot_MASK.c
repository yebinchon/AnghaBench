#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct boot_sector {int* system_id; int media; int fats; int /*<<< orphan*/  total_sect; int /*<<< orphan*/  sectors; int /*<<< orphan*/  hidden; int /*<<< orphan*/  heads; int /*<<< orphan*/  secs_track; int /*<<< orphan*/  reserved; int /*<<< orphan*/  sector_size; } ;
struct TYPE_3__ {unsigned short cluster_size; int fat_bits; unsigned short root_entries; scalar_t__ data_clusters; scalar_t__ data_start; scalar_t__ root_cluster; scalar_t__ root_start; scalar_t__ fat_size; scalar_t__ fat_start; } ;
typedef  TYPE_1__ DOS_FS ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ atari_format ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC6(DOS_FS * fs, struct boot_sector *b, unsigned lss)
{
    unsigned short sectors;

    FUNC4("Boot sector contents:\n");
    if (!atari_format) {
	char id[9];
	FUNC5(id, (const char *)b->system_id, 8);
	id[8] = 0;
	FUNC4("System ID \"%s\"\n", id);
    } else {
	/* On Atari, a 24 bit serial number is stored at offset 8 of the boot
	 * sector */
	FUNC4("Serial number 0x%x\n",
	       b->system_id[5] | (b->system_id[6] << 8) | (b->
							   system_id[7] << 16));
    }
    FUNC4("Media byte 0x%02x (%s)\n", b->media, FUNC1(b->media));
    FUNC4("%10d bytes per logical sector\n", FUNC0(b->sector_size));
    FUNC4("%10d bytes per cluster\n", fs->cluster_size);
    FUNC4("%10d reserved sector%s\n", FUNC2(b->reserved),
	   FUNC2(b->reserved) == 1 ? "" : "s");
    FUNC4("First FAT starts at byte %llu (sector %llu)\n",
	   (unsigned long long)fs->fat_start,
	   (unsigned long long)fs->fat_start / lss);
    FUNC4("%10d FATs, %d bit entries\n", b->fats, fs->fat_bits);
    FUNC4("%10lld bytes per FAT (= %llu sectors)\n", (long long)fs->fat_size,
	   (long long)fs->fat_size / lss);
    if (!fs->root_cluster) {
	FUNC4("Root directory starts at byte %llu (sector %llu)\n",
	       (unsigned long long)fs->root_start,
	       (unsigned long long)fs->root_start / lss);
	FUNC4("%10d root directory entries\n", fs->root_entries);
    } else {
	FUNC4("Root directory start at cluster %lu (arbitrary size)\n",
	       (unsigned long)fs->root_cluster);
    }
    FUNC4("Data area starts at byte %llu (sector %llu)\n",
	   (unsigned long long)fs->data_start,
	   (unsigned long long)fs->data_start / lss);
    FUNC4("%10lu data clusters (%llu bytes)\n",
	   (unsigned long)fs->data_clusters,
	   (unsigned long long)fs->data_clusters * fs->cluster_size);
    FUNC4("%u sectors/track, %u heads\n", FUNC2(b->secs_track),
	   FUNC2(b->heads));
    FUNC4("%10u hidden sectors\n", atari_format ?
	   /* On Atari, the hidden field is only 16 bit wide and unused */
	   (((unsigned char *)&b->hidden)[0] |
	    ((unsigned char *)&b->hidden)[1] << 8) : FUNC3(b->hidden));
    sectors = FUNC0(b->sectors);
    FUNC4("%10u sectors total\n", sectors ? sectors : FUNC3(b->total_sect));
}