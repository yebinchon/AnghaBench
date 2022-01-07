
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_5__ {int zfs_name; int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;


 int free (char*) ;
 int strcspn (int ,char*) ;
 int strlcpy (char*,int ,int) ;
 char* zfs_alloc (int ,int) ;
 int * zpool_add_handle (TYPE_1__*,char*) ;
 int * zpool_find_handle (TYPE_1__*,char*,int) ;

__attribute__((used)) static zpool_handle_t *
zpool_handle(zfs_handle_t *zhp)
{
 char *pool_name;
 int len;
 zpool_handle_t *zph;

 len = strcspn(zhp->zfs_name, "/@#") + 1;
 pool_name = zfs_alloc(zhp->zfs_hdl, len);
 (void) strlcpy(pool_name, zhp->zfs_name, len);

 zph = zpool_find_handle(zhp, pool_name, len);
 if (zph == ((void*)0))
  zph = zpool_add_handle(zhp, pool_name);

 free(pool_name);
 return (zph);
}
