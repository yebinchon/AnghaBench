
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ kc_refcnt; int kc_in_use_lock; } ;
typedef TYPE_1__ kcf_context_t ;


 int ASSERT (int) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void
kcf_context_cache_destructor(void *buf, void *cdrarg)
{
 kcf_context_t *kctx = (kcf_context_t *)buf;

 ASSERT(kctx->kc_refcnt == 0);
 mutex_destroy(&kctx->kc_in_use_lock);
}
