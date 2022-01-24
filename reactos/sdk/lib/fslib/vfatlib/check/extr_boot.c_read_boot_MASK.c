#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct boot_sector_16 {int extended_sig; int /*<<< orphan*/ * label; } ;
struct boot_sector {unsigned int cluster_size; int fats; int extended_sig; int /*<<< orphan*/  heads; int /*<<< orphan*/  secs_track; int /*<<< orphan*/  label; int /*<<< orphan*/  backup_boot; scalar_t__ root_cluster; scalar_t__ fat32_length; int /*<<< orphan*/  fat_length; int /*<<< orphan*/  dir_entries; int /*<<< orphan*/  reserved; scalar_t__ total_sect; int /*<<< orphan*/  sectors; int /*<<< orphan*/  sector_size; } ;
typedef  unsigned int off_t ;
typedef  int /*<<< orphan*/  b ;
struct TYPE_7__ {unsigned int cluster_size; int nfats; unsigned int fat_start; unsigned int root_start; int root_entries; unsigned int data_start; unsigned int data_clusters; unsigned int root_cluster; int free_clusters; int fat_bits; unsigned int backupboot_start; int eff_fat_bits; unsigned int fat_size; int /*<<< orphan*/ * label; scalar_t__ fsinfo_start; } ;
typedef  TYPE_1__ DOS_FS ;

/* Variables and functions */
 unsigned int FAT12_THRESHOLD ; 
 unsigned int FAT16_THRESHOLD ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int MSDOS_DIR_BITS ; 
 int MSDOS_DPS ; 
 unsigned int FUNC1 (int,unsigned int) ; 
 int SECTOR_SIZE ; 
 int /*<<< orphan*/  atari_format ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct boot_sector*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct boot_sector*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct boot_sector*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,struct boot_sector*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,unsigned int) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,struct boot_sector*,unsigned int) ; 
 scalar_t__ verbose ; 

void FUNC15(DOS_FS * fs)
{
    struct boot_sector b;
    unsigned total_sectors;
    unsigned int logical_sector_size, sectors;
    off_t fat_length;
    unsigned total_fat_entries;
    off_t data_size;

    FUNC8(0, sizeof(b), &b);
    logical_sector_size = FUNC0(b.sector_size);
    if (!logical_sector_size)
	FUNC5("Logical sector size is zero.");

    /* This was moved up because it's the first thing that will fail */
    /* if the platform needs special handling of unaligned multibyte accesses */
    /* but such handling isn't being provided. See GET_UNALIGNED_W() above. */
    if (logical_sector_size & (SECTOR_SIZE - 1))
	FUNC5("Logical sector size (%d bytes) is not a multiple of the physical "
	    "sector size.", logical_sector_size);

    fs->cluster_size = b.cluster_size * logical_sector_size;
    if (!fs->cluster_size)
	FUNC5("Cluster size is zero.");
    if (b.fats != 2 && b.fats != 1)
	FUNC5("Currently, only 1 or 2 FATs are supported, not %d.\n", b.fats);
    fs->nfats = b.fats;
    sectors = FUNC0(b.sectors);
    total_sectors = sectors ? sectors : FUNC11(b.total_sect);
    if (verbose)
	FUNC13("Checking we can access the last sector of the filesystem\n");
    /* Can't access last odd sector anyway, so round down */
    FUNC9((off_t)((total_sectors & ~1) - 1) * logical_sector_size,
	    logical_sector_size);

    fat_length = FUNC10(b.fat_length) ?
	FUNC10(b.fat_length) : FUNC11(b.fat32_length);
    if (!fat_length)
	FUNC5("FAT size is zero.");

    fs->fat_start = (off_t)FUNC10(b.reserved) * logical_sector_size;
    fs->root_start = ((off_t)FUNC10(b.reserved) + b.fats * fat_length) *
	logical_sector_size;
    fs->root_entries = FUNC0(b.dir_entries);
    fs->data_start = fs->root_start + FUNC1(fs->root_entries <<
							MSDOS_DIR_BITS,
							logical_sector_size);

    data_size = (off_t)total_sectors * logical_sector_size - fs->data_start;
    if (data_size < fs->cluster_size)
	FUNC5("Filesystem has no space for any data clusters");

    fs->data_clusters = data_size / fs->cluster_size;
    fs->root_cluster = 0;	/* indicates standard, pre-FAT32 root dir */
    fs->fsinfo_start = 0;	/* no FSINFO structure */
    fs->free_clusters = -1;	/* unknown */
    if (!b.fat_length && b.fat32_length) {
	fs->fat_bits = 32;
	fs->root_cluster = FUNC11(b.root_cluster);
	if (!fs->root_cluster && fs->root_entries)
	    /* M$ hasn't specified this, but it looks reasonable: If
	     * root_cluster is 0 but there is a separate root dir
	     * (root_entries != 0), we handle the root dir the old way. Give a
	     * warning, but convertig to a root dir in a cluster chain seems
	     * to complex for now... */
	    FUNC13("Warning: FAT32 root dir not in cluster chain! "
		   "Compatibility mode...\n");
	else if (!fs->root_cluster && !fs->root_entries)
	    FUNC5("No root directory!");
	else if (fs->root_cluster && fs->root_entries)
	    FUNC13("Warning: FAT32 root dir is in a cluster chain, but "
		   "a separate root dir\n"
		   "  area is defined. Cannot fix this easily.\n");
	if (fs->data_clusters < FAT16_THRESHOLD)
	    FUNC13("Warning: Filesystem is FAT32 according to fat_length "
		   "and fat32_length fields,\n"
		   "  but has only %lu clusters, less than the required "
		   "minimum of %d.\n"
		   "  This may lead to problems on some systems.\n",
		   (unsigned long)fs->data_clusters, FAT16_THRESHOLD);

	FUNC4(fs, &b);
	fs->backupboot_start = FUNC10(b.backup_boot) * logical_sector_size;
	FUNC3(fs, &b, logical_sector_size);

	FUNC14(fs, &b, logical_sector_size);
    } else if (!atari_format) {
	/* On real MS-DOS, a 16 bit FAT is used whenever there would be too
	 * much clusers otherwise. */
	fs->fat_bits = (fs->data_clusters >= FAT12_THRESHOLD) ? 16 : 12;
	if (fs->data_clusters >= FAT16_THRESHOLD)
	    FUNC5("Too many clusters (%lu) for FAT16 filesystem.",
		    (unsigned long)fs->data_clusters);
	FUNC4(fs, &b);
    } else {
	/* On Atari, things are more difficult: GEMDOS always uses 12bit FATs
	 * on floppies, and always 16 bit on harddisks. */
	fs->fat_bits = 16;	/* assume 16 bit FAT for now */
	/* If more clusters than fat entries in 16-bit fat, we assume
	 * it's a real MSDOS FS with 12-bit fat. */
	if (fs->data_clusters + 2 > fat_length * logical_sector_size * 8 / 16 ||
	    /* if it has one of the usual floppy sizes -> 12bit FAT  */
	    (total_sectors == 720 || total_sectors == 1440 ||
	     total_sectors == 2880))
	    fs->fat_bits = 12;
    }
    /* On FAT32, the high 4 bits of a FAT entry are reserved */
    fs->eff_fat_bits = (fs->fat_bits == 32) ? 28 : fs->fat_bits;
    fs->fat_size = fat_length * logical_sector_size;

    fs->label = FUNC2(12, sizeof(uint8_t));
    if (fs->fat_bits == 12 || fs->fat_bits == 16) {
	struct boot_sector_16 *b16 = (struct boot_sector_16 *)&b;
	if (b16->extended_sig == 0x29)
	    FUNC12(fs->label, b16->label, 11);
	else
#ifdef __REACTOS__
	{
	    free(fs->label);
#endif
	    fs->label = NULL;
#ifdef __REACTOS__
	}
#endif
    } else if (fs->fat_bits == 32) {
	if (b.extended_sig == 0x29)
	    FUNC12(fs->label, &b.label, 11);
	else
#ifdef __REACTOS__
	{
	    free(fs->label);
#endif
	    fs->label = NULL;
#ifdef __REACTOS__
	}
#endif
    }

    total_fat_entries = (uint64_t)fs->fat_size * 8 / fs->fat_bits;
    if (fs->data_clusters > total_fat_entries - 2)
	FUNC5("Filesystem has %u clusters but only space for %u FAT entries.",
	    fs->data_clusters, total_fat_entries - 2);
    if (!fs->root_entries && !fs->root_cluster)
	FUNC5("Root directory has zero size.");
    if (fs->root_entries & (MSDOS_DPS - 1))
	FUNC5("Root directory (%d entries) doesn't span an integral number of "
	    "sectors.", fs->root_entries);
    if (logical_sector_size & (SECTOR_SIZE - 1))
	FUNC5("Logical sector size (%u bytes) is not a multiple of the physical "
	    "sector size.", logical_sector_size);
#if 0				/* linux kernel doesn't check that either */
    /* ++roman: On Atari, these two fields are often left uninitialized */
    if (!atari_format && (!b.secs_track || !b.heads))
	die("Invalid disk format in boot sector.");
#endif
    if (verbose)
	FUNC6(fs, &b, logical_sector_size);
}