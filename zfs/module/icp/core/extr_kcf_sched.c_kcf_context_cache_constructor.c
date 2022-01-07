
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kc_in_use_lock; scalar_t__ kc_refcnt; } ;
typedef TYPE_1__ kcf_context_t ;


 int MUTEX_DEFAULT ;
 int mutex_init (int *,int *,int ,int *) ;

__attribute__((used)) static int
kcf_context_cache_constructor(void *buf, void *cdrarg, int kmflags)
{
 kcf_context_t *kctx = (kcf_context_t *)buf;

 kctx->kc_refcnt = 0;
 mutex_init(&kctx->kc_in_use_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));

 return (0);
}
