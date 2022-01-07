
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * cp_wkey; int * cp_keylocation; } ;
typedef TYPE_1__ dsl_crypto_params_t ;
typedef scalar_t__ boolean_t ;


 int dsl_wrapping_key_free (int *) ;
 int kmem_free (TYPE_1__*,int) ;
 int spa_strfree (int *) ;

void
dsl_crypto_params_free(dsl_crypto_params_t *dcp, boolean_t unload)
{
 if (dcp == ((void*)0))
  return;

 if (dcp->cp_keylocation != ((void*)0))
  spa_strfree(dcp->cp_keylocation);
 if (unload && dcp->cp_wkey != ((void*)0))
  dsl_wrapping_key_free(dcp->cp_wkey);

 kmem_free(dcp, sizeof (dsl_crypto_params_t));
}
