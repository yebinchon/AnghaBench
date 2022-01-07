
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dck_obj; } ;
typedef TYPE_1__ dsl_crypto_key_t ;



__attribute__((used)) static int
spa_crypto_key_compare(const void *a, const void *b)
{
 const dsl_crypto_key_t *dcka = a;
 const dsl_crypto_key_t *dckb = b;

 if (dcka->dck_obj < dckb->dck_obj)
  return (-1);
 if (dcka->dck_obj > dckb->dck_obj)
  return (1);
 return (0);
}
