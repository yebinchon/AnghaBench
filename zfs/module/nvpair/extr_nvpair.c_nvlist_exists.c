
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* nvp_list; } ;
typedef TYPE_1__ nvpriv_t ;
typedef int nvpair_t ;
struct TYPE_6__ {scalar_t__ nvl_priv; } ;
typedef TYPE_2__ nvlist_t ;
struct TYPE_7__ {int nvi_nvp; struct TYPE_7__* nvi_next; } ;
typedef TYPE_3__ i_nvp_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int NVP_NAME (int *) ;
 scalar_t__ strcmp (char const*,int ) ;

boolean_t
nvlist_exists(nvlist_t *nvl, const char *name)
{
 nvpriv_t *priv;
 nvpair_t *nvp;
 i_nvp_t *curr;

 if (name == ((void*)0) || nvl == ((void*)0) ||
     (priv = (nvpriv_t *)(uintptr_t)nvl->nvl_priv) == ((void*)0))
  return (B_FALSE);

 for (curr = priv->nvp_list; curr != ((void*)0); curr = curr->nvi_next) {
  nvp = &curr->nvi_nvp;

  if (strcmp(name, NVP_NAME(nvp)) == 0)
   return (B_TRUE);
 }

 return (B_FALSE);
}
