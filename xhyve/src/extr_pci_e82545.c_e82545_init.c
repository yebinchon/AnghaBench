
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_devinst {struct e82545_softc* pi_arg; } ;
struct e82545_softc {TYPE_1__* vms; int esc_tx_tid; int esc_tx_cond; int esc_rx_cond; int esc_mtx; struct pci_devinst* esc_pi; } ;
struct TYPE_2__ {int* mac; } ;


 int DPRINTF (char*,char*) ;
 int E82545_BAR_FLASH ;
 int E82545_BAR_FLASH_LEN ;
 int E82545_BAR_IO ;
 int E82545_BAR_IO_LEN ;
 int E82545_BAR_REGISTER ;
 int E82545_BAR_REGISTER_LEN ;
 int E82545_DEV_ID_82545EM_COPPER ;
 int E82545_SUBDEV_ID ;
 int E82545_VENDOR_ID_INTEL ;
 int PCIBAR_IO ;
 int PCIBAR_MEM32 ;
 int PCIC_NETWORK ;
 int PCIM_HDRTYPE_NORMAL ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_HDRTYPE ;
 int PCIR_INTPIN ;
 int PCIR_SUBCLASS ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBVEND_0 ;
 int PCIR_VENDOR ;
 int PCIS_NETWORK_ETHERNET ;
 struct e82545_softc* calloc (int,int) ;
 int e82545_reset (struct e82545_softc*,int ) ;
 int e82545_tx_thread ;
 int exit (int ) ;
 int pci_emul_alloc_bar (struct pci_devinst*,int ,int ,int ) ;
 int pci_lintr_request (struct pci_devinst*) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int ) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int) ;
 int print_mac ;
 int printf (char*,int,int,int,int,int,int) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_create (int *,int *,int ,struct e82545_softc*) ;
 int pthread_mutex_init (int *,int *) ;
 int vmn_create (struct e82545_softc*) ;

__attribute__((used)) static int
e82545_init(struct pci_devinst *pi, char *opts)
{
 DPRINTF("Loading with options: %s\r\n", opts);

 struct e82545_softc *sc;


 sc = calloc(1, sizeof(*sc));

 pi->pi_arg = sc;
 sc->esc_pi = pi;

 pthread_mutex_init(&sc->esc_mtx, ((void*)0));
 pthread_cond_init(&sc->esc_rx_cond, ((void*)0));
 pthread_cond_init(&sc->esc_tx_cond, ((void*)0));
 pthread_create(&sc->esc_tx_tid, ((void*)0), e82545_tx_thread, sc);

 pci_set_cfgdata16(pi, PCIR_DEVICE, E82545_DEV_ID_82545EM_COPPER);
 pci_set_cfgdata16(pi, PCIR_VENDOR, E82545_VENDOR_ID_INTEL);
 pci_set_cfgdata8(pi, PCIR_CLASS, PCIC_NETWORK);
 pci_set_cfgdata8(pi, PCIR_SUBCLASS, PCIS_NETWORK_ETHERNET);
 pci_set_cfgdata16(pi, PCIR_SUBDEV_0, E82545_SUBDEV_ID);
 pci_set_cfgdata16(pi, PCIR_SUBVEND_0, E82545_VENDOR_ID_INTEL);

 pci_set_cfgdata8(pi, PCIR_HDRTYPE, PCIM_HDRTYPE_NORMAL);
 pci_set_cfgdata8(pi, PCIR_INTPIN, 0x1);



 pci_lintr_request(pi);

 pci_emul_alloc_bar(pi, E82545_BAR_REGISTER, PCIBAR_MEM32,
  E82545_BAR_REGISTER_LEN);
 pci_emul_alloc_bar(pi, E82545_BAR_FLASH, PCIBAR_MEM32,
  E82545_BAR_FLASH_LEN);
 pci_emul_alloc_bar(pi, E82545_BAR_IO, PCIBAR_IO,
  E82545_BAR_IO_LEN);





    if (vmn_create(sc) == -1) {
        return (-1);
    }

    if (print_mac == 1)
    {
        printf("MAC: %02x:%02x:%02x:%02x:%02x:%02x\n",
               sc->vms->mac[0], sc->vms->mac[1], sc->vms->mac[2],
               sc->vms->mac[3], sc->vms->mac[4], sc->vms->mac[5]);
        exit(0);
    }


 e82545_reset(sc, 0);

 return (0);
}
