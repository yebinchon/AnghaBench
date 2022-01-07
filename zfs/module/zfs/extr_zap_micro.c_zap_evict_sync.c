
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zap_num_entries_mtx; } ;
struct TYPE_6__ {TYPE_1__ zap_f; scalar_t__ zap_ismicro; int zap_rwlock; } ;
typedef TYPE_2__ zap_t ;


 int kmem_free (TYPE_2__*,int) ;
 int mutex_destroy (int *) ;
 int mze_destroy (TYPE_2__*) ;
 int rw_destroy (int *) ;

void
zap_evict_sync(void *dbu)
{
 zap_t *zap = dbu;

 rw_destroy(&zap->zap_rwlock);

 if (zap->zap_ismicro)
  mze_destroy(zap);
 else
  mutex_destroy(&zap->zap_f.zap_num_entries_mtx);

 kmem_free(zap, sizeof (zap_t));
}
