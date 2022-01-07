
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nvp_nentries; int nvp_nbuckets; } ;
typedef TYPE_1__ nvpriv_t ;
typedef int boolean_t ;


 int UINT32_MAX ;

__attribute__((used)) static boolean_t
nvt_needs_togrow(nvpriv_t *priv)
{




 return (priv->nvp_nentries > priv->nvp_nbuckets &&
     (UINT32_MAX >> 1) >= priv->nvp_nbuckets);
}
