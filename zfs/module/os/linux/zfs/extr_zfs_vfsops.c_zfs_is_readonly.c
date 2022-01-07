
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* z_sb; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int boolean_t ;
struct TYPE_4__ {int s_flags; } ;


 int SB_RDONLY ;

boolean_t
zfs_is_readonly(zfsvfs_t *zfsvfs)
{
 return (!!(zfsvfs->z_sb->s_flags & SB_RDONLY));
}
