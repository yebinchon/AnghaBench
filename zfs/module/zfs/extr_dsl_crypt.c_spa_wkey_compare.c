
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ wk_ddobj; } ;
typedef TYPE_1__ dsl_wrapping_key_t ;



__attribute__((used)) static int
spa_wkey_compare(const void *a, const void *b)
{
 const dsl_wrapping_key_t *wka = a;
 const dsl_wrapping_key_t *wkb = b;

 if (wka->wk_ddobj < wkb->wk_ddobj)
  return (-1);
 if (wka->wk_ddobj > wkb->wk_ddobj)
  return (1);
 return (0);
}
