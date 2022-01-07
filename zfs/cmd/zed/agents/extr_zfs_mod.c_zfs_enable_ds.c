
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uap_zhp; } ;
typedef TYPE_1__ unavailpool_t ;


 int free (TYPE_1__*) ;
 int zpool_close (int ) ;
 int zpool_enable_datasets (int ,int *,int ) ;

void
zfs_enable_ds(void *arg)
{
 unavailpool_t *pool = (unavailpool_t *)arg;

 (void) zpool_enable_datasets(pool->uap_zhp, ((void*)0), 0);
 zpool_close(pool->uap_zhp);
 free(pool);
}
