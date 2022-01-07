
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_label_t ;
typedef int uint64_t ;


 int VDEV_LABELS ;
 int VDEV_LABEL_END_SIZE ;

int
vdev_label_number(uint64_t psize, uint64_t offset)
{
 int l;

 if (offset >= psize - VDEV_LABEL_END_SIZE) {
  offset -= psize - VDEV_LABEL_END_SIZE;
  offset += (VDEV_LABELS / 2) * sizeof (vdev_label_t);
 }
 l = offset / sizeof (vdev_label_t);
 return (l < VDEV_LABELS ? l : -1);
}
