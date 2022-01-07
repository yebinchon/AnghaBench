
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
typedef int errcode_t ;
struct TYPE_4__ {int flags; } ;


 int EXT2_ET_OP_NOT_SUPPORTED ;
 int EXT2_ET_RO_FILSYS ;
 int EXT2_FLAG_RW ;
 int ext2fs_mmp_reset (TYPE_1__*) ;

errcode_t ext2fs_mmp_clear(ext2_filsys fs)
{
 return EXT2_ET_OP_NOT_SUPPORTED;

}
