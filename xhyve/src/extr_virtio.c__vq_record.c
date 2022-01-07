
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct virtio_desc {int vd_flags; int vd_len; int vd_addr; } ;
struct iovec {int iov_len; int iov_base; } ;


 int paddr_guest2host (int ,int ) ;

__attribute__((used)) static inline void
_vq_record(int i, volatile struct virtio_desc *vd, struct iovec *iov, int n_iov,
 uint16_t *flags)
{
 if (i >= n_iov)
  return;
 iov[i].iov_base = paddr_guest2host(vd->vd_addr, vd->vd_len);
 iov[i].iov_len = vd->vd_len;
 if (flags != ((void*)0))
  flags[i] = vd->vd_flags;
}
