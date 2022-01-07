
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef TYPE_1__* proc_entry_ptr ;
struct TYPE_4__ {int feature_flags; int cpu_signature; int cpu_flags; int apic_version; scalar_t__ apic_id; int type; } ;


 int LAPIC_VERSION ;
 int MPCT_ENTRY_PROCESSOR ;
 int MPEP_FEATURES ;
 int MPEP_SIG ;
 int PROCENTRY_FLAG_BP ;
 int PROCENTRY_FLAG_EN ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
mpt_build_proc_entries(proc_entry_ptr mpep, int ncpu)
{
 int i;

 for (i = 0; i < ncpu; i++) {
  memset(mpep, 0, sizeof(*mpep));
  mpep->type = MPCT_ENTRY_PROCESSOR;
  mpep->apic_id = (uint8_t) i;
  mpep->apic_version = LAPIC_VERSION;
  mpep->cpu_flags = PROCENTRY_FLAG_EN;
  if (i == 0)
   mpep->cpu_flags |= PROCENTRY_FLAG_BP;
  mpep->cpu_signature = MPEP_SIG;
  mpep->feature_flags = MPEP_FEATURES;
  mpep++;
 }
}
