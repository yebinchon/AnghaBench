
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int btrfs_root ;
struct TYPE_10__ {int dwHighDateTime; int dwLowDateTime; } ;
struct TYPE_9__ {int generation; int st_nlink; int st_mode; int st_atime; int st_mtime; int st_ctime; int st_blocks; } ;
struct TYPE_8__ {int HighPart; int LowPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef TYPE_2__ INODE_ITEM ;
typedef TYPE_3__ FILETIME ;


 int GetSystemTimeAsFileTime (TYPE_3__*) ;
 int SUBVOL_ROOT_INODE ;
 int TYPE_INODE_ITEM ;
 int add_inode_ref (int *,int ,int ,int ,char*) ;
 int add_item (int *,int ,int ,int ,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int win_time_to_unix (TYPE_1__,int *) ;

__attribute__((used)) static void init_fs_tree(btrfs_root* r, uint32_t node_size) {
    INODE_ITEM ii;
    FILETIME filetime;
    LARGE_INTEGER time;

    memset(&ii, 0, sizeof(INODE_ITEM));

    ii.generation = 1;
    ii.st_blocks = node_size;
    ii.st_nlink = 1;
    ii.st_mode = 040755;

    GetSystemTimeAsFileTime(&filetime);
    time.LowPart = filetime.dwLowDateTime;
    time.HighPart = filetime.dwHighDateTime;

    win_time_to_unix(time, &ii.st_atime);
    ii.st_ctime = ii.st_mtime = ii.st_atime;

    add_item(r, SUBVOL_ROOT_INODE, TYPE_INODE_ITEM, 0, &ii, sizeof(INODE_ITEM));

    add_inode_ref(r, SUBVOL_ROOT_INODE, SUBVOL_ROOT_INODE, 0, "..");
}
