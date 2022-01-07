
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * zpool_hdl; int zpool_name; int zpool_config; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_8__ {char* member_0; uintptr_t zc_nvlist_dst; int zc_nvlist_dst_size; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
struct TYPE_9__ {scalar_t__ zb_objset; scalar_t__ zb_object; } ;
typedef TYPE_3__ zbookmark_phys_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;


 scalar_t__ ENOMEM ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_ERROR_LOG ;
 int ZPOOL_CONFIG_ERRCOUNT ;
 int ZPOOL_ERR_DATASET ;
 int ZPOOL_ERR_OBJECT ;
 int dgettext (int ,char*) ;
 scalar_t__ errno ;
 int free (void*) ;
 int no_memory (int *) ;
 scalar_t__ nvlist_add_nvlist (int *,char*,int *) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,scalar_t__) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_uint64 (int ,int ,int*) ;
 int qsort (TYPE_3__*,int,int,int ) ;
 int strcpy (int ,int ) ;
 int verify (int) ;
 int zbookmark_mem_compare ;
 void* zfs_alloc (int *,int) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int zpool_standard_error_fmt (int *,scalar_t__,int ) ;

int
zpool_get_errlog(zpool_handle_t *zhp, nvlist_t **nverrlistp)
{
 zfs_cmd_t zc = {"\0"};
 libzfs_handle_t *hdl = zhp->zpool_hdl;
 uint64_t count;
 zbookmark_phys_t *zb = ((void*)0);
 int i;






 verify(nvlist_lookup_uint64(zhp->zpool_config, ZPOOL_CONFIG_ERRCOUNT,
     &count) == 0);
 if (count == 0)
  return (0);
 zc.zc_nvlist_dst = (uintptr_t)zfs_alloc(zhp->zpool_hdl,
     count * sizeof (zbookmark_phys_t));
 zc.zc_nvlist_dst_size = count;
 (void) strcpy(zc.zc_name, zhp->zpool_name);
 for (;;) {
  if (zfs_ioctl(zhp->zpool_hdl, ZFS_IOC_ERROR_LOG,
      &zc) != 0) {
   free((void *)(uintptr_t)zc.zc_nvlist_dst);
   if (errno == ENOMEM) {
    void *dst;

    count = zc.zc_nvlist_dst_size;
    dst = zfs_alloc(zhp->zpool_hdl, count *
        sizeof (zbookmark_phys_t));
    zc.zc_nvlist_dst = (uintptr_t)dst;
   } else {
    return (zpool_standard_error_fmt(hdl, errno,
        dgettext(TEXT_DOMAIN, "errors: List of "
        "errors unavailable")));
   }
  } else {
   break;
  }
 }
 zb = ((zbookmark_phys_t *)(uintptr_t)zc.zc_nvlist_dst) +
     zc.zc_nvlist_dst_size;
 count -= zc.zc_nvlist_dst_size;

 qsort(zb, count, sizeof (zbookmark_phys_t), zbookmark_mem_compare);

 verify(nvlist_alloc(nverrlistp, 0, KM_SLEEP) == 0);




 for (i = 0; i < count; i++) {
  nvlist_t *nv;


  if (i > 0 && zb[i-1].zb_objset == zb[i].zb_objset &&
      zb[i-1].zb_object == zb[i].zb_object)
   continue;

  if (nvlist_alloc(&nv, NV_UNIQUE_NAME, KM_SLEEP) != 0)
   goto nomem;
  if (nvlist_add_uint64(nv, ZPOOL_ERR_DATASET,
      zb[i].zb_objset) != 0) {
   nvlist_free(nv);
   goto nomem;
  }
  if (nvlist_add_uint64(nv, ZPOOL_ERR_OBJECT,
      zb[i].zb_object) != 0) {
   nvlist_free(nv);
   goto nomem;
  }
  if (nvlist_add_nvlist(*nverrlistp, "ejk", nv) != 0) {
   nvlist_free(nv);
   goto nomem;
  }
  nvlist_free(nv);
 }

 free((void *)(uintptr_t)zc.zc_nvlist_dst);
 return (0);

nomem:
 free((void *)(uintptr_t)zc.zc_nvlist_dst);
 return (no_memory(zhp->zpool_hdl));
}
