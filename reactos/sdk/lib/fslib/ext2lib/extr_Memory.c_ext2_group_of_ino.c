
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {TYPE_1__* ext2_sb; } ;
struct TYPE_4__ {int s_inodes_per_group; } ;
typedef TYPE_2__* PEXT2_FILESYS ;



int ext2_group_of_ino(PEXT2_FILESYS fs, ULONG ino)
{
    return (ino - 1) / fs->ext2_sb->s_inodes_per_group;
}
