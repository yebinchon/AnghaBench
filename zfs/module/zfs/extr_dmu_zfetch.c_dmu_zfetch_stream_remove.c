
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zs_lock; } ;
typedef TYPE_1__ zstream_t ;
struct TYPE_8__ {int zf_stream; int zf_lock; } ;
typedef TYPE_2__ zfetch_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int kmem_free (TYPE_1__*,int) ;
 int list_remove (int *,TYPE_1__*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void
dmu_zfetch_stream_remove(zfetch_t *zf, zstream_t *zs)
{
 ASSERT(MUTEX_HELD(&zf->zf_lock));
 list_remove(&zf->zf_stream, zs);
 mutex_destroy(&zs->zs_lock);
 kmem_free(zs, sizeof (*zs));
}
