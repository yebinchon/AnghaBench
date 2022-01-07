
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ km_dsobj; } ;
typedef TYPE_1__ dsl_key_mapping_t ;



__attribute__((used)) static int
spa_key_mapping_compare(const void *a, const void *b)
{
 const dsl_key_mapping_t *kma = a;
 const dsl_key_mapping_t *kmb = b;

 if (kma->km_dsobj < kmb->km_dsobj)
  return (-1);
 if (kma->km_dsobj > kmb->km_dsobj)
  return (1);
 return (0);
}
