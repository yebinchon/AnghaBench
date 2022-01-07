
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* nvp_list; } ;
typedef TYPE_1__ nvpriv_t ;
typedef int nvpair_t ;
struct TYPE_8__ {scalar_t__ nvl_priv; } ;
typedef TYPE_2__ nvlist_t ;
struct TYPE_9__ {int nvi_nvp; struct TYPE_9__* nvi_next; } ;
typedef TYPE_3__ i_nvp_t ;


 int EINVAL ;
 int NVP_NAME (int *) ;
 int NVP_NELEM (int *) ;
 int NVP_TYPE (int *) ;
 int NVP_VALUE (int *) ;
 int nvlist_add_common (TYPE_2__*,int ,int ,int ,int ) ;

__attribute__((used)) static int
nvlist_copy_pairs(nvlist_t *snvl, nvlist_t *dnvl)
{
 nvpriv_t *priv;
 i_nvp_t *curr;

 if ((priv = (nvpriv_t *)(uintptr_t)snvl->nvl_priv) == ((void*)0))
  return (EINVAL);

 for (curr = priv->nvp_list; curr != ((void*)0); curr = curr->nvi_next) {
  nvpair_t *nvp = &curr->nvi_nvp;
  int err;

  if ((err = nvlist_add_common(dnvl, NVP_NAME(nvp), NVP_TYPE(nvp),
      NVP_NELEM(nvp), NVP_VALUE(nvp))) != 0)
   return (err);
 }

 return (0);
}
