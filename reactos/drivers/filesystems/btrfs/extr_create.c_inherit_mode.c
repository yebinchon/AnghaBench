
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int st_mode; } ;
struct TYPE_5__ {TYPE_1__ inode_item; } ;
typedef TYPE_2__ fcb ;


 int S_IFDIR ;
 int S_ISGID ;
 int S_ISUID ;
 int S_ISVTX ;

uint32_t inherit_mode(fcb* parfcb, bool is_dir) {
    uint32_t mode;

    if (!parfcb)
        return 0755;

    mode = parfcb->inode_item.st_mode & ~S_IFDIR;
    mode &= ~S_ISVTX;
    mode &= ~S_ISUID;

    if (!is_dir)
        mode &= ~S_ISGID;

    return mode;
}
