
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nvpriv_t ;
struct TYPE_6__ {size_t nvp_size; } ;
typedef TYPE_1__ nvpair_t ;
struct TYPE_7__ {scalar_t__ nvl_priv; } ;
typedef TYPE_2__ nvlist_t ;


 int NVPAIR2I_NVP (TYPE_1__*) ;
 int i_nvp_t ;
 int nv_mem_free (int *,int ,size_t) ;
 int nvi_nvp ;
 size_t offsetof (int ,int ) ;

__attribute__((used)) static void
nvp_buf_free(nvlist_t *nvl, nvpair_t *nvp)
{
 nvpriv_t *priv = (nvpriv_t *)(uintptr_t)nvl->nvl_priv;
 size_t nvsize = nvp->nvp_size + offsetof(i_nvp_t, nvi_nvp);

 nv_mem_free(priv, NVPAIR2I_NVP(nvp), nvsize);
}
