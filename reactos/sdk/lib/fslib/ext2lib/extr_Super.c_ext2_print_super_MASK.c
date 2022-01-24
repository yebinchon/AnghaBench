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
struct TYPE_3__ {scalar_t__ s_magic; scalar_t__* s_volume_name; int /*<<< orphan*/ * s_uuid; int /*<<< orphan*/  s_def_resgid; int /*<<< orphan*/  s_def_resuid; int /*<<< orphan*/  s_rev_level; int /*<<< orphan*/  s_creator_os; int /*<<< orphan*/  s_checkinterval; int /*<<< orphan*/  s_minor_rev_level; int /*<<< orphan*/  s_errors; int /*<<< orphan*/  s_state; int /*<<< orphan*/  s_max_mnt_count; int /*<<< orphan*/  s_mnt_count; int /*<<< orphan*/  s_inodes_per_group; int /*<<< orphan*/  s_frags_per_group; int /*<<< orphan*/  s_blocks_per_group; int /*<<< orphan*/  s_log_frag_size; int /*<<< orphan*/  s_log_block_size; int /*<<< orphan*/  s_first_data_block; int /*<<< orphan*/  s_free_inodes_count; int /*<<< orphan*/  s_free_blocks_count; int /*<<< orphan*/  s_r_blocks_count; int /*<<< orphan*/  s_blocks_count; int /*<<< orphan*/  s_inodes_count; } ;
typedef  TYPE_1__* PEXT2_SUPER_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ EXT2_SUPER_MAGIC ; 

void FUNC2(PEXT2_SUPER_BLOCK pExt2Sb)
{
    int i;

    FUNC0("\nExt2 Super Block Details ...\n\n");
    FUNC0("     Inode Count: %lu\n", pExt2Sb->s_inodes_count);
    FUNC0("     Block Count: %lu\n", pExt2Sb->s_blocks_count);
    FUNC0("     Reserved Block Count: %lu\n", pExt2Sb->s_r_blocks_count);
    FUNC0("     Free Blocks: %lu\n", pExt2Sb->s_free_blocks_count);
    FUNC0("     Free Inodes: %lu\n", pExt2Sb->s_free_inodes_count);
    FUNC0("     First Data Block: %lu\n", pExt2Sb->s_first_data_block);
    FUNC0("     Log Block Size: %lu\n", pExt2Sb->s_log_block_size);
    FUNC0("     Log Frag Size: %ld\n", pExt2Sb->s_log_frag_size);
    FUNC0("     Blocks per Group: %lu\n", pExt2Sb->s_blocks_per_group);
    FUNC0("     Fragments per Group: %lu\n", pExt2Sb->s_frags_per_group);
    FUNC0("     Inodes per Group: %lu\n", pExt2Sb->s_inodes_per_group);
//    DPRINT("     Mount Time: %s", ctime((time_t *) & (pExt2Sb->s_mtime)));
//    DPRINT("     Write Time: %s", ctime((time_t *) & (pExt2Sb->s_wtime)));
    FUNC0("     Mount Count: %u\n", pExt2Sb->s_mnt_count);
    FUNC0("     Max Mount Count: %d\n", pExt2Sb->s_max_mnt_count);
    FUNC0("     Magic Number: %X  (%s)\n", pExt2Sb->s_magic,
        pExt2Sb->s_magic == EXT2_SUPER_MAGIC ? "OK" : "BAD");
    FUNC0("     File System State: %X\n", pExt2Sb->s_state);
    FUNC0("     Error Behaviour: %X\n", pExt2Sb->s_errors);
    FUNC0("     Minor rev: %u\n", pExt2Sb->s_minor_rev_level);
//    DPRINT("     Last Check: %s", ctime((time_t *) & (pExt2Sb->s_lastcheck)));
    FUNC0("     Check Interval: %lu\n", pExt2Sb->s_checkinterval);
    FUNC0("     Creator OS: %lu\n", pExt2Sb->s_creator_os);
    FUNC0("     Revision Level: %lu\n", pExt2Sb->s_rev_level);
    FUNC0("     Reserved Block Default UID: %u\n", pExt2Sb->s_def_resuid);
    FUNC0("     Reserved Block Default GID: %u\n", pExt2Sb->s_def_resgid);
    FUNC0("     uuid = ");
    for (i=0; i < 16; i++)
        FUNC1("%x ", pExt2Sb->s_uuid[i]);
    FUNC1("\n");

    FUNC0("     volume label name: ");
    for (i=0; i < 16; i++)
    {
        if (pExt2Sb->s_volume_name[i] == 0)
            break;
        FUNC1("%c", pExt2Sb->s_volume_name[i]);
    }
    FUNC1("\n");

    FUNC0("\n\n");
}