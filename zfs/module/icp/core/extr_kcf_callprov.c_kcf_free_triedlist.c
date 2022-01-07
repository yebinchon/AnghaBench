
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pt_pd; struct TYPE_4__* pt_next; } ;
typedef TYPE_1__ kcf_prov_tried_t ;


 int KCF_PROV_REFRELE (int ) ;
 int kmem_free (TYPE_1__*,int) ;

void
kcf_free_triedlist(kcf_prov_tried_t *list)
{
 kcf_prov_tried_t *l;

 while ((l = list) != ((void*)0)) {
  list = list->pt_next;
  KCF_PROV_REFRELE(l->pt_pd);
  kmem_free(l, sizeof (kcf_prov_tried_t));
 }
}
