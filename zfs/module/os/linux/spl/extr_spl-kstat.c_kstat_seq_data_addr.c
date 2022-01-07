
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int loff_t ;
typedef int kstat_timer_t ;
struct TYPE_5__ {void* (* addr ) (TYPE_2__*,int) ;} ;
struct TYPE_6__ {int ks_type; int ks_data; TYPE_1__ ks_raw_ops; } ;
typedef TYPE_2__ kstat_t ;
typedef int kstat_named_t ;
typedef int kstat_io_t ;
typedef int kstat_intr_t ;







 int PANIC (char*,int) ;
 void* stub1 (TYPE_2__*,int) ;

__attribute__((used)) static void *
kstat_seq_data_addr(kstat_t *ksp, loff_t n)
{
 void *rc = ((void*)0);

 switch (ksp->ks_type) {
  case 129:
   if (ksp->ks_raw_ops.addr)
    rc = ksp->ks_raw_ops.addr(ksp, n);
   else
    rc = ksp->ks_data;
   break;
  case 130:
   rc = ksp->ks_data + n * sizeof (kstat_named_t);
   break;
  case 132:
   rc = ksp->ks_data + n * sizeof (kstat_intr_t);
   break;
  case 131:
   rc = ksp->ks_data + n * sizeof (kstat_io_t);
   break;
  case 128:
   rc = ksp->ks_data + n * sizeof (kstat_timer_t);
   break;
  default:
   PANIC("Undefined kstat type %d\n", ksp->ks_type);
 }

 return (rc);
}
