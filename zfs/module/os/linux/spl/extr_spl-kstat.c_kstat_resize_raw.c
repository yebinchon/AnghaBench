
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ks_raw_bufsize; int ks_raw_buf; } ;
typedef TYPE_1__ kstat_t ;


 int ENOMEM ;
 int KM_SLEEP ;
 int KSTAT_RAW_MAX ;
 int MIN (int,int) ;
 int vmem_alloc (int,int ) ;
 int vmem_free (int ,int) ;

__attribute__((used)) static int
kstat_resize_raw(kstat_t *ksp)
{
 if (ksp->ks_raw_bufsize == KSTAT_RAW_MAX)
  return (ENOMEM);

 vmem_free(ksp->ks_raw_buf, ksp->ks_raw_bufsize);
 ksp->ks_raw_bufsize = MIN(ksp->ks_raw_bufsize * 2, KSTAT_RAW_MAX);
 ksp->ks_raw_buf = vmem_alloc(ksp->ks_raw_bufsize, KM_SLEEP);

 return (0);
}
