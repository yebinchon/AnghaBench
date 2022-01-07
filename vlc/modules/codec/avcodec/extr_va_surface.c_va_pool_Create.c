
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_va_t ;
struct va_pool_cfg {scalar_t__ (* pf_create_device ) (int *) ;} ;
struct TYPE_4__ {int poolrefs; scalar_t__ surface_count; struct va_pool_cfg callbacks; } ;
typedef TYPE_1__ va_pool_t ;


 int atomic_init (int *,int) ;
 TYPE_1__* malloc (int) ;
 int msg_Dbg (int *,char*) ;
 int msg_Err (int *,char*) ;
 scalar_t__ stub1 (int *) ;
 scalar_t__ unlikely (int ) ;

va_pool_t * va_pool_Create(vlc_va_t *va, const struct va_pool_cfg *cbs)
{
    va_pool_t *va_pool = malloc(sizeof(*va_pool));
    if (unlikely(va_pool == ((void*)0)))
        return ((void*)0);

    va_pool->callbacks = *cbs;


    if (cbs->pf_create_device(va)) {
        msg_Err(va, "Failed to create device");
        return ((void*)0);
    }
    msg_Dbg(va, "CreateDevice succeed");

    va_pool->surface_count = 0;
    atomic_init(&va_pool->poolrefs, 1);

    return va_pool;
}
