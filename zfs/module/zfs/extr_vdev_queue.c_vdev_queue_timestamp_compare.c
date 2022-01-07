
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_timestamp; } ;
typedef TYPE_1__ zio_t ;


 int TREE_CMP (int ,int ) ;
 int TREE_PCMP (TYPE_1__ const*,TYPE_1__ const*) ;
 scalar_t__ likely (int) ;

int
vdev_queue_timestamp_compare(const void *x1, const void *x2)
{
 const zio_t *z1 = (const zio_t *)x1;
 const zio_t *z2 = (const zio_t *)x2;

 int cmp = TREE_CMP(z1->io_timestamp, z2->io_timestamp);

 if (likely(cmp))
  return (cmp);

 return (TREE_PCMP(z1, z2));
}
