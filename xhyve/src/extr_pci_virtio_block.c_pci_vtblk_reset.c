
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtblk_softc {int vbsc_vs; } ;


 int DPRINTF (char*) ;
 int vi_reset_dev (int *) ;

__attribute__((used)) static void
pci_vtblk_reset(void *vsc)
{
 struct pci_vtblk_softc *sc = vsc;

 DPRINTF(("vtblk: device reset requested !\n"));
 vi_reset_dev(&sc->vbsc_vs);
}
