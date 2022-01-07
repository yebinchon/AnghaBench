
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
struct TYPE_9__ {int generation; int st_blocks; int st_nlink; int st_mode; int st_atime; int otime; int st_mtime; int st_ctime; } ;
struct TYPE_8__ {int HighPart; int LowPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef TYPE_2__ INODE_ITEM ;
typedef TYPE_3__ FILETIME ;


 int BTRFS_ROOT_FSTREE ;
 int BTRFS_ROOT_TREEDIR ;
 int BTRFS_TYPE_DIRECTORY ;
 int GetSystemTimeAsFileTime (TYPE_3__*) ;
 int TYPE_INODE_ITEM ;
 int TYPE_ROOT_ITEM ;
 int add_dir_item (int *,int ,int const,int ,int ,int,int ,int ,char const*) ;
 int add_inode_ref (int *,int ,int ,int ,char const*) ;
 int add_item (int *,int ,int ,int ,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int win_time_to_unix (TYPE_1__,int *) ;

__attribute__((used)) static void set_default_subvol(btrfs_root* root_root, uint32_t node_size) {
    INODE_ITEM ii;
    FILETIME filetime;
    LARGE_INTEGER time;

    static const char default_subvol[] = "default";
    static const uint32_t default_hash = 0x8dbfc2d2;

    add_inode_ref(root_root, BTRFS_ROOT_FSTREE, BTRFS_ROOT_TREEDIR, 0, default_subvol);

    memset(&ii, 0, sizeof(INODE_ITEM));

    ii.generation = 1;
    ii.st_blocks = node_size;
    ii.st_nlink = 1;
    ii.st_mode = 040755;

    GetSystemTimeAsFileTime(&filetime);
    time.LowPart = filetime.dwLowDateTime;
    time.HighPart = filetime.dwHighDateTime;

    win_time_to_unix(time, &ii.st_atime);
    ii.st_ctime = ii.st_mtime = ii.otime = ii.st_atime;

    add_item(root_root, BTRFS_ROOT_TREEDIR, TYPE_INODE_ITEM, 0, &ii, sizeof(INODE_ITEM));

    add_inode_ref(root_root, BTRFS_ROOT_TREEDIR, BTRFS_ROOT_TREEDIR, 0, "..");

    add_dir_item(root_root, BTRFS_ROOT_TREEDIR, default_hash, BTRFS_ROOT_FSTREE, TYPE_ROOT_ITEM,
                 0xffffffffffffffff, 0, BTRFS_TYPE_DIRECTORY, default_subvol);
}
