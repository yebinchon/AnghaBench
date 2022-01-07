
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t zc_nvlist_src_size; scalar_t__ zc_nvlist_dst; scalar_t__ zc_nvlist_src; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int O_RDWR ;
 int UMEM_NOFAIL ;
 int ZFS_DEV ;
 int ZFS_IOC_POOL_SYNC ;
 int close (int) ;
 int fnvlist_add_boolean_value (int *,char*,int ) ;
 int * fnvlist_alloc () ;
 char* fnvlist_pack (int *,size_t*) ;
 int fnvlist_pack_free (char*,size_t) ;
 int free (void*) ;
 int nvlist_free (int *) ;
 int open (int ,int ) ;
 int strlcpy (int ,char const*,int) ;
 int umem_free (TYPE_1__*,int) ;
 TYPE_1__* umem_zalloc (int,int ) ;
 int zfs_ioctl_fd (int,int ,TYPE_1__*) ;

__attribute__((used)) static int
pool_active(void *unused, const char *name, uint64_t guid,
    boolean_t *isactive)
{
 zfs_cmd_t *zcp;
 nvlist_t *innvl;
 char *packed = ((void*)0);
 size_t size = 0;
 int fd, ret;





 fd = open(ZFS_DEV, O_RDWR);
 if (fd < 0)
  return (-1);

 zcp = umem_zalloc(sizeof (zfs_cmd_t), UMEM_NOFAIL);

 innvl = fnvlist_alloc();
 fnvlist_add_boolean_value(innvl, "force", B_FALSE);

 (void) strlcpy(zcp->zc_name, name, sizeof (zcp->zc_name));
 packed = fnvlist_pack(innvl, &size);
 zcp->zc_nvlist_src = (uint64_t)(uintptr_t)packed;
 zcp->zc_nvlist_src_size = size;

 ret = zfs_ioctl_fd(fd, ZFS_IOC_POOL_SYNC, zcp);

 fnvlist_pack_free(packed, size);
 free((void *)(uintptr_t)zcp->zc_nvlist_dst);
 nvlist_free(innvl);
 umem_free(zcp, sizeof (zfs_cmd_t));

 (void) close(fd);

 *isactive = (ret == 0);

 return (0);
}
