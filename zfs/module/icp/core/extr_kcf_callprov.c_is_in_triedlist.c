
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kcf_provider_desc_t ;
struct TYPE_3__ {struct TYPE_3__* pt_next; int * pt_pd; } ;
typedef TYPE_1__ kcf_prov_tried_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;

__attribute__((used)) static boolean_t
is_in_triedlist(kcf_provider_desc_t *pd, kcf_prov_tried_t *triedl)
{
 while (triedl != ((void*)0)) {
  if (triedl->pt_pd == pd)
   return (B_TRUE);
  triedl = triedl->pt_next;
 };

 return (B_FALSE);
}
