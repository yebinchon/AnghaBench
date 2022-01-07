
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfsvfs_t ;
struct TYPE_3__ {int zc_nvlist_dst_size; scalar_t__ zc_nvlist_dst; int zc_cookie; int zc_objset_type; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;


 int B_FALSE ;
 int ENOMEM ;
 int FTAG ;
 int KM_SLEEP ;
 int SET_ERROR (int ) ;
 void* vmem_alloc (int,int ) ;
 int vmem_free (void*,int) ;
 int xcopyout (void*,void*,int) ;
 int zfs_userspace_many (int *,int ,int *,void*,int*) ;
 int zfsvfs_hold (int ,int ,int **,int ) ;
 int zfsvfs_rele (int *,int ) ;

__attribute__((used)) static int
zfs_ioc_userspace_many(zfs_cmd_t *zc)
{
 zfsvfs_t *zfsvfs;
 int bufsize = zc->zc_nvlist_dst_size;

 if (bufsize <= 0)
  return (SET_ERROR(ENOMEM));

 int error = zfsvfs_hold(zc->zc_name, FTAG, &zfsvfs, B_FALSE);
 if (error != 0)
  return (error);

 void *buf = vmem_alloc(bufsize, KM_SLEEP);

 error = zfs_userspace_many(zfsvfs, zc->zc_objset_type, &zc->zc_cookie,
     buf, &zc->zc_nvlist_dst_size);

 if (error == 0) {
  error = xcopyout(buf,
      (void *)(uintptr_t)zc->zc_nvlist_dst,
      zc->zc_nvlist_dst_size);
 }
 vmem_free(buf, bufsize);
 zfsvfs_rele(zfsvfs, FTAG);

 return (error);
}
