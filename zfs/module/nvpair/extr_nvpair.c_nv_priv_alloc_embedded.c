
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nvp_nva; } ;
typedef TYPE_1__ nvpriv_t ;


 int NV_STAT_EMBEDDED ;
 TYPE_1__* nv_mem_zalloc (TYPE_1__*,int) ;
 int nv_priv_init (TYPE_1__*,int ,int ) ;

__attribute__((used)) static nvpriv_t *
nv_priv_alloc_embedded(nvpriv_t *priv)
{
 nvpriv_t *emb_priv;

 if ((emb_priv = nv_mem_zalloc(priv, sizeof (nvpriv_t))) == ((void*)0))
  return (((void*)0));

 nv_priv_init(emb_priv, priv->nvp_nva, NV_STAT_EMBEDDED);

 return (emb_priv);
}
