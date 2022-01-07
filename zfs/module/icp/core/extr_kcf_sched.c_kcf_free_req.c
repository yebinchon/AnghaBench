
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * an_tried_plist; int * an_context; int an_provider; } ;
typedef TYPE_1__ kcf_areq_node_t ;


 int KCF_CONTEXT_REFRELE (int *) ;
 int KCF_PROV_REFRELE (int ) ;
 int kcf_areq_cache ;
 int kcf_free_triedlist (int *) ;
 int kmem_cache_free (int ,TYPE_1__*) ;

void
kcf_free_req(kcf_areq_node_t *areq)
{
 KCF_PROV_REFRELE(areq->an_provider);
 if (areq->an_context != ((void*)0))
  KCF_CONTEXT_REFRELE(areq->an_context);

 if (areq->an_tried_plist != ((void*)0))
  kcf_free_triedlist(areq->an_tried_plist);
 kmem_cache_free(kcf_areq_cache, areq);
}
