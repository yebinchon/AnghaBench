#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  btrfs_root ;
struct TYPE_10__ {int /*<<< orphan*/  dwHighDateTime; int /*<<< orphan*/  dwLowDateTime; } ;
struct TYPE_9__ {int generation; int st_blocks; int st_nlink; int st_mode; int /*<<< orphan*/  st_atime; int /*<<< orphan*/  otime; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_ctime; } ;
struct TYPE_8__ {int /*<<< orphan*/  HighPart; int /*<<< orphan*/  LowPart; } ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  TYPE_2__ INODE_ITEM ;
typedef  TYPE_3__ FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ROOT_FSTREE ; 
 int /*<<< orphan*/  BTRFS_ROOT_TREEDIR ; 
 int /*<<< orphan*/  BTRFS_TYPE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  TYPE_INODE_ITEM ; 
 int /*<<< orphan*/  TYPE_ROOT_ITEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(btrfs_root* root_root, uint32_t node_size) {
    INODE_ITEM ii;
    FILETIME filetime;
    LARGE_INTEGER time;

    static const char default_subvol[] = "default";
    static const uint32_t default_hash = 0x8dbfc2d2;

    FUNC2(root_root, BTRFS_ROOT_FSTREE, BTRFS_ROOT_TREEDIR, 0, default_subvol);

    FUNC4(&ii, 0, sizeof(INODE_ITEM));

    ii.generation = 1;
    ii.st_blocks = node_size;
    ii.st_nlink = 1;
    ii.st_mode = 040755;

    FUNC0(&filetime);
    time.LowPart = filetime.dwLowDateTime;
    time.HighPart = filetime.dwHighDateTime;

    FUNC5(time, &ii.st_atime);
    ii.st_ctime = ii.st_mtime = ii.otime = ii.st_atime;

    FUNC3(root_root, BTRFS_ROOT_TREEDIR, TYPE_INODE_ITEM, 0, &ii, sizeof(INODE_ITEM));

    FUNC2(root_root, BTRFS_ROOT_TREEDIR, BTRFS_ROOT_TREEDIR, 0, "..");

    FUNC1(root_root, BTRFS_ROOT_TREEDIR, default_hash, BTRFS_ROOT_FSTREE, TYPE_ROOT_ITEM,
                 0xffffffffffffffff, 0, BTRFS_TYPE_DIRECTORY, default_subvol);
}