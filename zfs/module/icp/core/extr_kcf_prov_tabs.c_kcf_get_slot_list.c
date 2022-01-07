
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_11__ {scalar_t__ pd_prov_type; int pd_flags; } ;
typedef TYPE_1__ kcf_provider_desc_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 int CRYPTO_HIDE_PROVIDER ;
 scalar_t__ CRYPTO_HW_PROVIDER ;
 scalar_t__ CRYPTO_LOGICAL_PROVIDER ;
 int CRYPTO_SUCCESS ;
 scalar_t__ KCF_IS_PROV_UNVERIFIED (TYPE_1__*) ;
 scalar_t__ KCF_IS_PROV_USABLE (TYPE_1__*) ;
 size_t KCF_MAX_PROVIDERS ;
 int KCF_PROV_REFHOLD (TYPE_1__*) ;
 int KM_SLEEP ;
 int bcopy (TYPE_1__**,char*,size_t) ;
 int kcf_free_provider_tab (size_t,TYPE_1__**) ;
 char* kmem_alloc (size_t,int ) ;
 int kmem_free (TYPE_1__**,size_t) ;
 TYPE_1__** kmem_zalloc (size_t,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_1__** prov_tab ;
 int prov_tab_mutex ;

int
kcf_get_slot_list(uint_t *count, kcf_provider_desc_t ***array,
    boolean_t unverified)
{
 kcf_provider_desc_t *prov_desc;
 kcf_provider_desc_t **p = ((void*)0);
 char *last;
 uint_t cnt = 0;
 uint_t i, j;
 int rval = CRYPTO_SUCCESS;
 size_t n, final_size;


 mutex_enter(&prov_tab_mutex);
 for (i = 0; i < KCF_MAX_PROVIDERS; i++) {
  if ((prov_desc = prov_tab[i]) != ((void*)0) &&
      ((prov_desc->pd_prov_type == CRYPTO_HW_PROVIDER &&
      (prov_desc->pd_flags & CRYPTO_HIDE_PROVIDER) == 0) ||
      prov_desc->pd_prov_type == CRYPTO_LOGICAL_PROVIDER)) {
   if (KCF_IS_PROV_USABLE(prov_desc) ||
       (unverified && KCF_IS_PROV_UNVERIFIED(prov_desc))) {
    cnt++;
   }
  }
 }
 mutex_exit(&prov_tab_mutex);

 if (cnt == 0)
  goto out;

 n = cnt * sizeof (kcf_provider_desc_t *);
again:
 p = kmem_zalloc(n, KM_SLEEP);


 last = (char *)&p[cnt-1];

 mutex_enter(&prov_tab_mutex);

 for (i = 0, j = 0; i < KCF_MAX_PROVIDERS; i++) {
  if ((prov_desc = prov_tab[i]) != ((void*)0) &&
      ((prov_desc->pd_prov_type == CRYPTO_HW_PROVIDER &&
      (prov_desc->pd_flags & CRYPTO_HIDE_PROVIDER) == 0) ||
      prov_desc->pd_prov_type == CRYPTO_LOGICAL_PROVIDER)) {
   if (KCF_IS_PROV_USABLE(prov_desc) ||
       (unverified && KCF_IS_PROV_UNVERIFIED(prov_desc))) {
    if ((char *)&p[j] > last) {
     mutex_exit(&prov_tab_mutex);
     kcf_free_provider_tab(cnt, p);
     n = n << 1;
     cnt = cnt << 1;
     goto again;
    }
    p[j++] = prov_desc;
    KCF_PROV_REFHOLD(prov_desc);
   }
  }
 }
 mutex_exit(&prov_tab_mutex);

 final_size = j * sizeof (kcf_provider_desc_t *);
 cnt = j;
 ASSERT(final_size <= n);


 if (final_size < n) {
  char *final_buffer = ((void*)0);

  if (final_size > 0) {
   final_buffer = kmem_alloc(final_size, KM_SLEEP);
   bcopy(p, final_buffer, final_size);
  }
  kmem_free(p, n);
  p = (kcf_provider_desc_t **)final_buffer;
 }
out:
 *count = cnt;
 *array = p;
 return (rval);
}
