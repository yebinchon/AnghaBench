
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* pl_provider; struct TYPE_7__* pl_next; } ;
typedef TYPE_1__ kcf_provider_list_t ;
struct TYPE_8__ {int pd_lock; TYPE_1__* pd_provider_list; } ;
typedef TYPE_2__ kcf_provider_desc_t ;


 int KCF_PROV_IREFHOLD (TYPE_2__*) ;
 int KM_SLEEP ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
add_provider_to_array(kcf_provider_desc_t *p1, kcf_provider_desc_t *p2)
{
 kcf_provider_list_t *new;

 new = kmem_alloc(sizeof (kcf_provider_list_t), KM_SLEEP);
 mutex_enter(&p2->pd_lock);
 new->pl_next = p2->pd_provider_list;
 p2->pd_provider_list = new;
 KCF_PROV_IREFHOLD(p1);
 new->pl_provider = p1;
 mutex_exit(&p2->pd_lock);
}
