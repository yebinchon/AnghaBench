
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_port {int cmd; scalar_t__ pending; scalar_t__ waitforclear; scalar_t__ sact; scalar_t__ ci; scalar_t__ ccs; } ;


 int AHCI_P_CMD_CCS_MASK ;
 int AHCI_P_CMD_CR ;
 int AHCI_P_CMD_ST ;

__attribute__((used)) static void
ahci_check_stopped(struct ahci_port *p)
{





 if (!(p->cmd & AHCI_P_CMD_ST)) {
  if (p->pending == 0) {
   p->ccs = 0;
   p->cmd &= ~((unsigned) (AHCI_P_CMD_CR | AHCI_P_CMD_CCS_MASK));
   p->ci = 0;
   p->sact = 0;
   p->waitforclear = 0;
  }
 }
}
