
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* nvs_ops; } ;
typedef TYPE_2__ nvstream_t ;
struct TYPE_12__ {TYPE_5__* nvp_list; } ;
typedef TYPE_3__ nvpriv_t ;
struct TYPE_13__ {scalar_t__ nvl_priv; } ;
typedef TYPE_4__ nvlist_t ;
struct TYPE_14__ {int nvi_nvp; struct TYPE_14__* nvi_next; } ;
typedef TYPE_5__ i_nvp_t ;
struct TYPE_10__ {scalar_t__ (* nvs_nvpair ) (TYPE_2__*,int *,int *) ;int (* nvs_nvl_fini ) (TYPE_2__*) ;} ;


 int EFAULT ;
 scalar_t__ stub1 (TYPE_2__*,int *,int *) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static int
nvs_encode_pairs(nvstream_t *nvs, nvlist_t *nvl)
{
 nvpriv_t *priv = (nvpriv_t *)(uintptr_t)nvl->nvl_priv;
 i_nvp_t *curr;




 for (curr = priv->nvp_list; curr != ((void*)0); curr = curr->nvi_next)
  if (nvs->nvs_ops->nvs_nvpair(nvs, &curr->nvi_nvp, ((void*)0)) != 0)
   return (EFAULT);

 return (nvs->nvs_ops->nvs_nvl_fini(nvs));
}
