
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_5__ {char* pd_description; int pd_mech_list_count; int pd_remove_cv; int pd_resume_cv; int pd_lock; int pd_state; int pd_prov_id; int ** pd_mech_indx; void* pd_mechanisms; void* pd_ops_vector; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
struct TYPE_6__ {int pi_mech_list_count; scalar_t__ pi_provider_type; scalar_t__ pi_interface_version; int * pi_ops_vector; } ;
typedef TYPE_2__ crypto_provider_info_t ;
typedef int crypto_ops_t ;
typedef int crypto_mech_info_t ;


 scalar_t__ CRYPTO_LOGICAL_PROVIDER ;
 int CRYPTO_PROVIDER_DESCR_MAX_LEN ;
 scalar_t__ CRYPTO_SPI_VERSION_2 ;
 scalar_t__ CRYPTO_SPI_VERSION_3 ;
 int CV_DEFAULT ;
 int KCF_INVALID_INDX ;
 int KCF_MAXMECHTAB ;
 int KCF_OPS_CLASSSIZE ;
 int KCF_PROVID_INVALID ;
 int KCF_PROV_ALLOCATED ;
 int KM_SLEEP ;
 int MUTEX_DEFAULT ;
 int allocate_ops_v1 (int *,void*,int*) ;
 int allocate_ops_v2 (int *,void*) ;
 int allocate_ops_v3 (int *,void*) ;
 int cv_init (int *,int *,int ,int *) ;
 char* kmem_alloc (int,int ) ;
 void* kmem_zalloc (int,int ) ;
 int memset (char*,char,int) ;
 int mutex_init (int *,int *,int ,int *) ;

kcf_provider_desc_t *
kcf_alloc_provider_desc(crypto_provider_info_t *info)
{
 int i, j;
 kcf_provider_desc_t *desc;
 uint_t mech_list_count = info->pi_mech_list_count;
 crypto_ops_t *src_ops = info->pi_ops_vector;

 desc = kmem_zalloc(sizeof (kcf_provider_desc_t), KM_SLEEP);
 desc->pd_description = kmem_alloc(CRYPTO_PROVIDER_DESCR_MAX_LEN + 1,
     KM_SLEEP);
 (void) memset(desc->pd_description, ' ',
     CRYPTO_PROVIDER_DESCR_MAX_LEN);
 desc->pd_description[CRYPTO_PROVIDER_DESCR_MAX_LEN] = '\0';







 desc->pd_ops_vector = kmem_zalloc(sizeof (crypto_ops_t), KM_SLEEP);

 if (info->pi_provider_type != CRYPTO_LOGICAL_PROVIDER) {
  allocate_ops_v1(src_ops, desc->pd_ops_vector, &mech_list_count);
  if (info->pi_interface_version >= CRYPTO_SPI_VERSION_2)
   allocate_ops_v2(src_ops, desc->pd_ops_vector);
  if (info->pi_interface_version == CRYPTO_SPI_VERSION_3)
   allocate_ops_v3(src_ops, desc->pd_ops_vector);
 }

 desc->pd_mech_list_count = mech_list_count;
 desc->pd_mechanisms = kmem_zalloc(sizeof (crypto_mech_info_t) *
     mech_list_count, KM_SLEEP);
 for (i = 0; i < KCF_OPS_CLASSSIZE; i++)
  for (j = 0; j < KCF_MAXMECHTAB; j++)
   desc->pd_mech_indx[i][j] = KCF_INVALID_INDX;

 desc->pd_prov_id = KCF_PROVID_INVALID;
 desc->pd_state = KCF_PROV_ALLOCATED;

 mutex_init(&desc->pd_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 cv_init(&desc->pd_resume_cv, ((void*)0), CV_DEFAULT, ((void*)0));
 cv_init(&desc->pd_remove_cv, ((void*)0), CV_DEFAULT, ((void*)0));

 return (desc);
}
