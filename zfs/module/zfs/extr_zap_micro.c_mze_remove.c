
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zap_avl; } ;
struct TYPE_5__ {TYPE_1__ zap_m; int zap_rwlock; int zap_ismicro; } ;
typedef TYPE_2__ zap_t ;
typedef int mzap_ent_t ;


 int ASSERT (int ) ;
 int RW_WRITE_HELD (int *) ;
 int avl_remove (int *,int *) ;
 int kmem_free (int *,int) ;

__attribute__((used)) static void
mze_remove(zap_t *zap, mzap_ent_t *mze)
{
 ASSERT(zap->zap_ismicro);
 ASSERT(RW_WRITE_HELD(&zap->zap_rwlock));

 avl_remove(&zap->zap_m.zap_avl, mze);
 kmem_free(mze, sizeof (mzap_ent_t));
}
