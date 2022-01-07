
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int loff_t ;
struct TYPE_3__ {void* ks_private; } ;
typedef TYPE_1__ kstat_t ;



__attribute__((used)) static void *
spa_state_addr(kstat_t *ksp, loff_t n)
{
 return (ksp->ks_private);
}
