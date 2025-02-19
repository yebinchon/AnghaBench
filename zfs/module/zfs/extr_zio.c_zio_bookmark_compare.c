
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zb_objset; scalar_t__ zb_object; scalar_t__ zb_level; scalar_t__ zb_blkid; } ;
struct TYPE_4__ {TYPE_1__ io_bookmark; } ;
typedef TYPE_2__ zio_t ;



int
zio_bookmark_compare(const void *x1, const void *x2)
{
 const zio_t *z1 = x1;
 const zio_t *z2 = x2;

 if (z1->io_bookmark.zb_objset < z2->io_bookmark.zb_objset)
  return (-1);
 if (z1->io_bookmark.zb_objset > z2->io_bookmark.zb_objset)
  return (1);

 if (z1->io_bookmark.zb_object < z2->io_bookmark.zb_object)
  return (-1);
 if (z1->io_bookmark.zb_object > z2->io_bookmark.zb_object)
  return (1);

 if (z1->io_bookmark.zb_level < z2->io_bookmark.zb_level)
  return (-1);
 if (z1->io_bookmark.zb_level > z2->io_bookmark.zb_level)
  return (1);

 if (z1->io_bookmark.zb_blkid < z2->io_bookmark.zb_blkid)
  return (-1);
 if (z1->io_bookmark.zb_blkid > z2->io_bookmark.zb_blkid)
  return (1);

 if (z1 < z2)
  return (-1);
 if (z1 > z2)
  return (1);

 return (0);
}
