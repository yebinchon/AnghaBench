
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct vqueue_info {int dummy; } ;
struct pci_vtrnd_softc {scalar_t__ vrsc_fd; } ;
struct iovec {int iov_len; int iov_base; } ;


 int DPRINTF (char*) ;
 int assert (int) ;
 scalar_t__ read (scalar_t__,int ,int ) ;
 int vq_endchains (struct vqueue_info*,int) ;
 int vq_getchain (struct vqueue_info*,int *,struct iovec*,int,int *) ;
 scalar_t__ vq_has_descs (struct vqueue_info*) ;
 int vq_relchain (struct vqueue_info*,int ,int ) ;

__attribute__((used)) static void
pci_vtrnd_notify(void *vsc, struct vqueue_info *vq)
{
 struct iovec iov;
 struct pci_vtrnd_softc *sc;
 int len;
 uint16_t idx;

 sc = vsc;

 if (sc->vrsc_fd < 0) {
  vq_endchains(vq, 0);
  return;
 }

 while (vq_has_descs(vq)) {
  vq_getchain(vq, &idx, &iov, 1, ((void*)0));

  len = (int) read(sc->vrsc_fd, iov.iov_base, iov.iov_len);

  DPRINTF(("vtrnd: vtrnd_notify(): %d\r\n", len));


  assert(len > 0);




  vq_relchain(vq, idx, ((uint32_t) len));
 }
 vq_endchains(vq, 1);
}
