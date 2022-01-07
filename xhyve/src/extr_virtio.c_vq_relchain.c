
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t uint16_t ;
struct vring_used {size_t vu_idx; struct virtio_used* vu_ring; } ;
struct vqueue_info {size_t vq_qsize; struct vring_used* vq_used; } ;
struct virtio_used {size_t vu_idx; int vu_tlen; } ;



void
vq_relchain(struct vqueue_info *vq, uint16_t idx, uint32_t iolen)
{
 uint16_t uidx, mask;
 volatile struct vring_used *vuh;
 volatile struct virtio_used *vue;
 mask = vq->vq_qsize - 1;
 vuh = vq->vq_used;

 uidx = vuh->vu_idx;
 vue = &vuh->vu_ring[uidx++ & mask];
 vue->vu_idx = idx;
 vue->vu_tlen = iolen;
 vuh->vu_idx = uidx;
}
