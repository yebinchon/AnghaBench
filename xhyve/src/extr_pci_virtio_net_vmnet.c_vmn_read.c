
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vmnet_return_t ;
typedef scalar_t__ uint32_t ;
struct vmpktdesc {scalar_t__ vm_pkt_size; scalar_t__ vm_flags; scalar_t__ vm_pkt_iovcnt; struct iovec* vm_pkt_iov; } ;
struct vmnet_state {scalar_t__ max_packet_size; int iface; } ;
struct iovec {scalar_t__ iov_len; } ;
typedef int ssize_t ;


 scalar_t__ VMNET_SUCCESS ;
 int assert (int) ;
 scalar_t__ vmnet_read (int ,struct vmpktdesc*,int*) ;

__attribute__((used)) static ssize_t
vmn_read(struct vmnet_state *vms, struct iovec *iov, int n) {
 vmnet_return_t r;
 struct vmpktdesc v;
 int pktcnt;
 int i;

 v.vm_pkt_size = 0;

 for (i = 0; i < n; i++) {
  v.vm_pkt_size += iov[i].iov_len;
 }

 assert(v.vm_pkt_size >= vms->max_packet_size);

 v.vm_pkt_iov = iov;
 v.vm_pkt_iovcnt = (uint32_t) n;
 v.vm_flags = 0;

 pktcnt = 1;

 r = vmnet_read(vms->iface, &v, &pktcnt);

 assert(r == VMNET_SUCCESS);

 if (pktcnt < 1) {
  return (-1);
 }

 return ((ssize_t) v.vm_pkt_size);
}
