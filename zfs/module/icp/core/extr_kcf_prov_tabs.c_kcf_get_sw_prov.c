
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int kcf_provider_desc_t ;
struct TYPE_6__ {int me_mutex; int me_name; TYPE_1__* me_sw_prov; } ;
typedef TYPE_2__ kcf_mech_entry_t ;
typedef int crypto_mech_type_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int * pm_prov_desc; } ;


 int CE_WARN ;
 int CRYPTO_MECHANISM_INVALID ;
 int CRYPTO_MECH_NOT_SUPPORTED ;
 int CRYPTO_SUCCESS ;
 int KCF_PROV_REFHOLD (int *) ;
 scalar_t__ KCF_SUCCESS ;
 int cmn_err (int ,char*,int ) ;
 scalar_t__ kcf_get_mech_entry (int ,TYPE_2__**) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

int
kcf_get_sw_prov(crypto_mech_type_t mech_type, kcf_provider_desc_t **pd,
    kcf_mech_entry_t **mep, boolean_t log_warn)
{
 kcf_mech_entry_t *me;


 if (kcf_get_mech_entry(mech_type, &me) != KCF_SUCCESS)
  return (CRYPTO_MECHANISM_INVALID);





 mutex_enter(&me->me_mutex);

 if (me->me_sw_prov == ((void*)0) ||
     (*pd = me->me_sw_prov->pm_prov_desc) == ((void*)0)) {

  if (log_warn)
   cmn_err(CE_WARN, "no SW provider for \"%s\"\n",
       me->me_name);
  mutex_exit(&me->me_mutex);
  return (CRYPTO_MECH_NOT_SUPPORTED);
 }

 KCF_PROV_REFHOLD(*pd);
 mutex_exit(&me->me_mutex);

 if (mep != ((void*)0))
  *mep = me;

 return (CRYPTO_SUCCESS);
}
