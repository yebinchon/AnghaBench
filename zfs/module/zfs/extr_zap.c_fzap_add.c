
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_name_t ;
typedef int uint64_t ;
typedef int dmu_tx_t ;


 int ZAP_NEED_CD ;
 int fzap_add_cd (int *,int ,int ,void const*,int ,void*,int *) ;
 int fzap_check (int *,int ,int ) ;

int
fzap_add(zap_name_t *zn,
    uint64_t integer_size, uint64_t num_integers,
    const void *val, void *tag, dmu_tx_t *tx)
{
 int err = fzap_check(zn, integer_size, num_integers);
 if (err != 0)
  return (err);

 return (fzap_add_cd(zn, integer_size, num_integers,
     val, ZAP_NEED_CD, tag, tx));
}
