
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ks_data_size; int ks_data; } ;
typedef TYPE_1__ kstat_t ;


 int KSTAT_WRITE ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int
spa_io_history_update(kstat_t *ksp, int rw)
{
 if (rw == KSTAT_WRITE)
  memset(ksp->ks_data, 0, ksp->ks_data_size);

 return (0);
}
