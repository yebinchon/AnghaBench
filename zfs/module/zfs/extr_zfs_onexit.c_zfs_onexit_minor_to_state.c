
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_onexit_t ;
typedef int minor_t ;


 int EBADF ;
 int SET_ERROR (int ) ;
 int ZST_ONEXIT ;
 int * zfsdev_get_state (int ,int ) ;

__attribute__((used)) static int
zfs_onexit_minor_to_state(minor_t minor, zfs_onexit_t **zo)
{
 *zo = zfsdev_get_state(minor, ZST_ONEXIT);
 if (*zo == ((void*)0))
  return (SET_ERROR(EBADF));

 return (0);
}
