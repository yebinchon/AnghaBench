
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ io_size; scalar_t__ io_type; int io_abd; } ;
typedef TYPE_1__ zio_t ;
typedef scalar_t__ uint64_t ;
typedef int abd_t ;


 int ASSERT (int) ;
 scalar_t__ ZIO_TYPE_READ ;
 int abd_copy (int *,int ,scalar_t__) ;

__attribute__((used)) static void
zio_subblock(zio_t *zio, abd_t *data, uint64_t size)
{
 ASSERT(zio->io_size > size);

 if (zio->io_type == ZIO_TYPE_READ)
  abd_copy(data, zio->io_abd, size);
}
