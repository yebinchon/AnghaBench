
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ddt_key_t ;
struct TYPE_5__ {int dde_key; int dde_cv; } ;
typedef TYPE_1__ ddt_entry_t ;


 int CV_DEFAULT ;
 int KM_SLEEP ;
 int bzero (TYPE_1__*,int) ;
 int cv_init (int *,int *,int ,int *) ;
 int ddt_entry_cache ;
 TYPE_1__* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static ddt_entry_t *
ddt_alloc(const ddt_key_t *ddk)
{
 ddt_entry_t *dde;

 dde = kmem_cache_alloc(ddt_entry_cache, KM_SLEEP);
 bzero(dde, sizeof (ddt_entry_t));
 cv_init(&dde->dde_cv, ((void*)0), CV_DEFAULT, ((void*)0));

 dde->dde_key = *ddk;

 return (dde);
}
