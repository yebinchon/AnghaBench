
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_3__ {int * intrs; } ;
typedef TYPE_1__ kstat_intr_t ;


 size_t KSTAT_INTR_HARD ;
 size_t KSTAT_INTR_MULTSVC ;
 size_t KSTAT_INTR_SOFT ;
 size_t KSTAT_INTR_SPURIOUS ;
 size_t KSTAT_INTR_WATCHDOG ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
kstat_seq_show_intr(struct seq_file *f, kstat_intr_t *kip)
{
 seq_printf(f, "%-8u %-8u %-8u %-8u %-8u\n",
     kip->intrs[KSTAT_INTR_HARD],
     kip->intrs[KSTAT_INTR_SOFT],
     kip->intrs[KSTAT_INTR_WATCHDOG],
     kip->intrs[KSTAT_INTR_SPURIOUS],
     kip->intrs[KSTAT_INTR_MULTSVC]);

 return (0);
}
