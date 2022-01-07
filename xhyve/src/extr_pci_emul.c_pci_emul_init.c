
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_2__ {scalar_t__ ioapic_irq; scalar_t__ pirq_pin; int state; scalar_t__ pin; int lock; } ;
struct pci_devinst {int pi_name; struct pci_devemu* pi_d; TYPE_1__ pi_lintr; void* pi_func; void* pi_slot; void* pi_bus; } ;
struct pci_devemu {char* pe_emu; int (* pe_init ) (struct pci_devinst*,int ) ;} ;
struct funcinfo {struct pci_devinst* fi_devi; int fi_param; } ;


 int IDLE ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIM_CMD_MEMEN ;
 int PCIM_CMD_PORTEN ;
 int PCIR_COMMAND ;
 int PCIR_INTLINE ;
 int PCIR_INTPIN ;
 int PI_NAMESZ ;
 struct pci_devinst* calloc (int,int) ;
 int free (struct pci_devinst*) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int) ;
 int pthread_mutex_init (int *,int *) ;
 int snprintf (int ,int ,char*,char*,int) ;
 int stub1 (struct pci_devinst*,int ) ;

__attribute__((used)) static int
pci_emul_init(struct pci_devemu *pde, int bus, int slot,
    int func, struct funcinfo *fi)
{
 struct pci_devinst *pdi;
 int err;

 pdi = calloc(1, sizeof(struct pci_devinst));

 pdi->pi_bus = (uint8_t) bus;
 pdi->pi_slot = (uint8_t) slot;
 pdi->pi_func = (uint8_t) func;
 pthread_mutex_init(&pdi->pi_lintr.lock, ((void*)0));
 pdi->pi_lintr.pin = 0;
 pdi->pi_lintr.state = IDLE;
 pdi->pi_lintr.pirq_pin = 0;
 pdi->pi_lintr.ioapic_irq = 0;
 pdi->pi_d = pde;
 snprintf(pdi->pi_name, PI_NAMESZ, "%s-pci-%d", pde->pe_emu, slot);


 pci_set_cfgdata8(pdi, PCIR_INTLINE, 255);
 pci_set_cfgdata8(pdi, PCIR_INTPIN, 0);

 pci_set_cfgdata8(pdi, PCIR_COMMAND,
      PCIM_CMD_PORTEN | PCIM_CMD_MEMEN | PCIM_CMD_BUSMASTEREN);

 err = (*pde->pe_init)(pdi, fi->fi_param);
 if (err == 0)
  fi->fi_devi = pdi;
 else
  free(pdi);

 return (err);
}
