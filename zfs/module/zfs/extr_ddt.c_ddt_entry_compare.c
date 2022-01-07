
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__* u16; } ;
typedef TYPE_1__ ddt_key_cmp_t ;
struct TYPE_4__ {int dde_key; } ;
typedef TYPE_2__ ddt_entry_t ;


 int DDT_KEY_CMP_LEN ;
 int TREE_ISIGN (scalar_t__) ;
 scalar_t__ likely (scalar_t__) ;

int
ddt_entry_compare(const void *x1, const void *x2)
{
 const ddt_entry_t *dde1 = x1;
 const ddt_entry_t *dde2 = x2;
 const ddt_key_cmp_t *k1 = (const ddt_key_cmp_t *)&dde1->dde_key;
 const ddt_key_cmp_t *k2 = (const ddt_key_cmp_t *)&dde2->dde_key;
 int32_t cmp = 0;

 for (int i = 0; i < DDT_KEY_CMP_LEN; i++) {
  cmp = (int32_t)k1->u16[i] - (int32_t)k2->u16[i];
  if (likely(cmp))
   break;
 }

 return (TREE_ISIGN(cmp));
}
