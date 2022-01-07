
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; int constructor; int name; int la; } ;
typedef TYPE_1__ kmem_cache_t ;
typedef int kmem_cache_cb_t ;


 int ExInitializeNPagedLookasideList (int *,int *,int *,int ,size_t,char,int ) ;
 int GFP_KERNEL ;
 TYPE_1__* kmalloc (int,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int strncpy (int ,char const*,int) ;

kmem_cache_t *
kmem_cache_create(
    const char * name,
    size_t size,
    size_t offset,
    unsigned long flags,
    kmem_cache_cb_t ctor
)
{
    kmem_cache_t *kc = ((void*)0);

    kc = kmalloc(sizeof(kmem_cache_t), GFP_KERNEL);
    if (kc == ((void*)0)) {
        goto errorout;
    }

    memset(kc, 0, sizeof(kmem_cache_t));
    ExInitializeNPagedLookasideList(
        &kc->la,
        ((void*)0),
        ((void*)0),
        0,
        size,
        'JBKC',
        0);

    kc->size = size;
    strncpy(kc->name, name, 31);
    kc->constructor = ctor;

errorout:

    return kc;
}
