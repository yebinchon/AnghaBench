
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct pci_vtnet_softc {int vsc_config; } ;


 int memcpy (int *,void*,int) ;

__attribute__((used)) static int
pci_vtnet_cfgread(void *vsc, int offset, int size, uint32_t *retval)
{
 struct pci_vtnet_softc *sc = vsc;
 void *ptr;

 ptr = (uint8_t *)&sc->vsc_config + offset;
 memcpy(retval, ptr, size);
 return (0);
}
