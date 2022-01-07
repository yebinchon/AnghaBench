
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nvpriv_t ;
struct TYPE_7__ {TYPE_1__* nva_ops; } ;
typedef TYPE_2__ nv_alloc_t ;
struct TYPE_6__ {int * (* nv_ao_alloc ) (TYPE_2__*,int) ;} ;


 int nv_priv_init (int *,TYPE_2__*,int ) ;
 int * stub1 (TYPE_2__*,int) ;

__attribute__((used)) static nvpriv_t *
nv_priv_alloc(nv_alloc_t *nva)
{
 nvpriv_t *priv;





 if ((priv = nva->nva_ops->nv_ao_alloc(nva, sizeof (nvpriv_t))) == ((void*)0))
  return (((void*)0));

 nv_priv_init(priv, nva, 0);

 return (priv);
}
