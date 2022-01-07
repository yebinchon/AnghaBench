
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vqueue_info {int vq_last_avail; } ;



void
vq_retchain(struct vqueue_info *vq)
{

 vq->vq_last_avail--;
}
