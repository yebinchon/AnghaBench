
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spa_iostats_t ;
struct TYPE_3__ {int ks_data; } ;
typedef TYPE_1__ kstat_t ;


 int KSTAT_WRITE ;
 int memcpy (int ,int *,int) ;
 int spa_iostats_template ;

int
spa_iostats_update(kstat_t *ksp, int rw)
{
 if (rw == KSTAT_WRITE) {
  memcpy(ksp->ks_data, &spa_iostats_template,
      sizeof (spa_iostats_t));
 }

 return (0);
}
