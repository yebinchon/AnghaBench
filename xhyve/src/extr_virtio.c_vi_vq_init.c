
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct vring_used {int dummy; } ;
struct vring_avail {int dummy; } ;
struct vqueue_info {int vq_qsize; scalar_t__ vq_save_used; scalar_t__ vq_last_avail; int vq_flags; struct vring_used* vq_used; struct vring_avail* vq_avail; struct virtio_desc* vq_desc; scalar_t__ vq_pfn; } ;
struct virtio_softc {size_t vs_curq; struct vqueue_info* vs_queues; } ;
struct virtio_desc {int dummy; } ;


 int VQ_ALLOC ;
 scalar_t__ VRING_ALIGN ;
 int VRING_PFN ;
 char* paddr_guest2host (int,size_t) ;
 scalar_t__ roundup2 (uintptr_t,uintptr_t) ;
 size_t vring_size (int) ;

__attribute__((used)) static void
vi_vq_init(struct virtio_softc *vs, uint32_t pfn)
{
 struct vqueue_info *vq;
 uint64_t phys;
 size_t size;
 char *base;

 vq = &vs->vs_queues[vs->vs_curq];
 vq->vq_pfn = pfn;
 phys = (uint64_t)pfn << VRING_PFN;
 size = vring_size(vq->vq_qsize);
 base = paddr_guest2host(phys, size);


 vq->vq_desc = (struct virtio_desc *)base;
 base += vq->vq_qsize * sizeof(struct virtio_desc);


 vq->vq_avail = (struct vring_avail *)base;
 base += (2 + vq->vq_qsize + 1) * sizeof(uint16_t);


 base = (char *) roundup2(((uintptr_t) base), ((uintptr_t) VRING_ALIGN));


 vq->vq_used = (struct vring_used *)base;


 vq->vq_flags = VQ_ALLOC;
 vq->vq_last_avail = 0;
 vq->vq_save_used = 0;
}
