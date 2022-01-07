
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vtnet_softc {int vms; } ;
struct iovec {char* iov_base; size_t iov_len; } ;


 int vmn_write (int ,struct iovec*,int) ;

__attribute__((used)) static void
pci_vtnet_tap_tx(struct pci_vtnet_softc *sc, struct iovec *iov, int iovcnt,
   int len)
{
 static char pad[60];

 if (!sc->vms)
  return;






 if (len < 60) {
  iov[iovcnt].iov_base = pad;
  iov[iovcnt].iov_len = (size_t) (60 - len);
  iovcnt++;
 }
 vmn_write(sc->vms, iov, iovcnt);
}
