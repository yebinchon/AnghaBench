
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t zc_nvlist_dst_size; int zc_nvlist_dst_filled; int zc_iflags; scalar_t__ zc_nvlist_dst; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;


 int B_TRUE ;
 int EFAULT ;
 int ENOMEM ;
 int SET_ERROR (int ) ;
 scalar_t__ ddi_copyout (char*,void*,size_t,int ) ;
 char* fnvlist_pack (int *,size_t*) ;
 int fnvlist_pack_free (char*,size_t) ;
 size_t fnvlist_size (int *) ;

__attribute__((used)) static int
put_nvlist(zfs_cmd_t *zc, nvlist_t *nvl)
{
 char *packed = ((void*)0);
 int error = 0;
 size_t size;

 size = fnvlist_size(nvl);

 if (size > zc->zc_nvlist_dst_size) {
  error = SET_ERROR(ENOMEM);
 } else {
  packed = fnvlist_pack(nvl, &size);
  if (ddi_copyout(packed, (void *)(uintptr_t)zc->zc_nvlist_dst,
      size, zc->zc_iflags) != 0)
   error = SET_ERROR(EFAULT);
  fnvlist_pack_free(packed, size);
 }

 zc->zc_nvlist_dst_size = size;
 zc->zc_nvlist_dst_filled = B_TRUE;
 return (error);
}
