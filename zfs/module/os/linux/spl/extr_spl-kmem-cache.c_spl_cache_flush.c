
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int spl_kmem_magazine_t ;
struct TYPE_4__ {int skc_lock; } ;
typedef TYPE_1__ spl_kmem_cache_t ;


 int __spl_cache_flush (TYPE_1__*,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
spl_cache_flush(spl_kmem_cache_t *skc, spl_kmem_magazine_t *skm, int flush)
{
 spin_lock(&skc->skc_lock);
 __spl_cache_flush(skc, skm, flush);
 spin_unlock(&skc->skc_lock);
}
