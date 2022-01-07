
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int MIN (int ,int ) ;
 int SPA_DVAS_PER_BP ;
 scalar_t__ SPA_VERSION_DITTO_BLOCKS ;
 int spa_max_replication_override ;
 scalar_t__ spa_version (int *) ;

int
spa_max_replication(spa_t *spa)
{





 if (spa_version(spa) < SPA_VERSION_DITTO_BLOCKS)
  return (1);
 return (MIN(SPA_DVAS_PER_BP, spa_max_replication_override));
}
