
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_7__ {int kpe_name; } ;
struct TYPE_6__ {TYPE_2__ ks_proc; } ;
typedef TYPE_1__ kstat_t ;


 int ASSERT (TYPE_1__*) ;
 int KSTAT_STRLEN ;
 int kstat_proc_entry_install (TYPE_2__*,int,int *,TYPE_1__*) ;
 int proc_kstat_operations ;
 scalar_t__ strncmp (int ,char*,int ) ;

void
__kstat_install(kstat_t *ksp)
{
 ASSERT(ksp);
 mode_t mode;

 if (strncmp(ksp->ks_proc.kpe_name, "dbufs", KSTAT_STRLEN) == 0) {
  mode = 0600;
 } else {
  mode = 0644;
 }
 kstat_proc_entry_install(
     &ksp->ks_proc, mode, &proc_kstat_operations, ksp);
}
