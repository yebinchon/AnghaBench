
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* z_sb; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_4__ {int s_active; } ;


 int ESRCH ;
 int SET_ERROR (int ) ;
 int atomic_inc_not_zero (int *) ;

int
zfs_vfs_ref(zfsvfs_t **zfvp)
{
 if (*zfvp == ((void*)0) || (*zfvp)->z_sb == ((void*)0) ||
     !atomic_inc_not_zero(&((*zfvp)->z_sb->s_active))) {
  return (SET_ERROR(ESRCH));
 }
 return (0);
}
