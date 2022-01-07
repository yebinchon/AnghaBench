
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int kcf_provider_desc_t ;
struct TYPE_5__ {struct TYPE_5__* pt_next; int * pt_pd; } ;
typedef TYPE_1__ kcf_prov_tried_t ;


 TYPE_1__* kmem_alloc (int,int) ;

kcf_prov_tried_t *
kcf_insert_triedlist(kcf_prov_tried_t **list, kcf_provider_desc_t *pd,
    int kmflag)
{
 kcf_prov_tried_t *l;

 l = kmem_alloc(sizeof (kcf_prov_tried_t), kmflag);
 if (l == ((void*)0))
  return (((void*)0));

 l->pt_pd = pd;
 l->pt_next = *list;
 *list = l;

 return (l);
}
