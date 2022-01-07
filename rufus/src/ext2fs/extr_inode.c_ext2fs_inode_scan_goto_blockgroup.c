
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* ext2_inode_scan ;
typedef int errcode_t ;
struct TYPE_6__ {int current_group; TYPE_1__* fs; scalar_t__ groups_left; } ;
struct TYPE_5__ {scalar_t__ group_desc_count; } ;


 int get_next_blockgroup (TYPE_2__*) ;

errcode_t ext2fs_inode_scan_goto_blockgroup(ext2_inode_scan scan,
         int group)
{
 scan->current_group = group - 1;
 scan->groups_left = scan->fs->group_desc_count - group;
 return get_next_blockgroup(scan);
}
