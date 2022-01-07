
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inout_port {char* name; int size; struct atkbdc_softc* arg; int handler; void* flags; int port; } ;
struct TYPE_4__ {void* irq; } ;
struct TYPE_3__ {void* irq; } ;
struct atkbdc_softc {int ps2mouse_sc; int ps2kbd_sc; TYPE_2__ aux; TYPE_1__ kbd; int mtx; } ;


 void* AUX_DEV_IRQ ;
 void* IOPORT_F_INOUT ;
 int KBD_DATA_PORT ;
 void* KBD_DEV_IRQ ;
 int KBD_STS_CTL_PORT ;
 int assert (int) ;
 int atkbdc_data_handler ;
 int atkbdc_sts_ctl_handler ;
 int bzero (struct inout_port*,int) ;
 struct atkbdc_softc* calloc (int,int) ;
 int pci_irq_reserve (void*) ;
 int ps2kbd_init (struct atkbdc_softc*) ;
 int ps2mouse_init (struct atkbdc_softc*) ;
 int pthread_mutex_init (int *,int *) ;
 int register_inout (struct inout_port*) ;

void
atkbdc_init()
{
 struct inout_port iop;
 struct atkbdc_softc *sc;
 int error;

 sc = calloc(1, sizeof(struct atkbdc_softc));

 pthread_mutex_init(&sc->mtx, ((void*)0));

 bzero(&iop, sizeof(struct inout_port));
 iop.name = "atkdbc";
 iop.port = KBD_STS_CTL_PORT;
 iop.size = 1;
 iop.flags = IOPORT_F_INOUT;
 iop.handler = atkbdc_sts_ctl_handler;
 iop.arg = sc;

 error = register_inout(&iop);
 assert(error == 0);

 bzero(&iop, sizeof(struct inout_port));
 iop.name = "atkdbc";
 iop.port = KBD_DATA_PORT;
 iop.size = 1;
 iop.flags = IOPORT_F_INOUT;
 iop.handler = atkbdc_data_handler;
 iop.arg = sc;

 error = register_inout(&iop);
 assert(error == 0);

 pci_irq_reserve(KBD_DEV_IRQ);
 sc->kbd.irq = KBD_DEV_IRQ;

 pci_irq_reserve(AUX_DEV_IRQ);
 sc->aux.irq = AUX_DEV_IRQ;

 sc->ps2kbd_sc = ps2kbd_init(sc);
 sc->ps2mouse_sc = ps2mouse_init(sc);
}
