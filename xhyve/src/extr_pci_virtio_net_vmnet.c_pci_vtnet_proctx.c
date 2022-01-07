
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct vqueue_info {int dummy; } ;
struct pci_vtnet_softc {int dummy; } ;
struct iovec {scalar_t__ iov_len; } ;


 int DPRINTF (char*) ;
 int VTNET_MAXSEGS ;
 int assert (int) ;
 int pci_vtnet_tap_tx (struct pci_vtnet_softc*,struct iovec*,int,int) ;
 int vq_getchain (struct vqueue_info*,int *,struct iovec*,int,int *) ;
 int vq_relchain (struct vqueue_info*,int ,int ) ;

__attribute__((used)) static void
pci_vtnet_proctx(struct pci_vtnet_softc *sc, struct vqueue_info *vq)
{
 struct iovec iov[VTNET_MAXSEGS + 1];
 int i, n;
 int plen, tlen;
 uint16_t idx;






 n = vq_getchain(vq, &idx, iov, VTNET_MAXSEGS, ((void*)0));
 assert(n >= 1 && n <= VTNET_MAXSEGS);
 plen = 0;
 tlen = (int) iov[0].iov_len;
 for (i = 1; i < n; i++) {
  plen += iov[i].iov_len;
  tlen += iov[i].iov_len;
 }

 DPRINTF(("virtio: packet send, %d bytes, %d segs\n\r", plen, n));
 pci_vtnet_tap_tx(sc, &iov[1], n - 1, plen);


 vq_relchain(vq, idx, ((uint32_t) tlen));
}
