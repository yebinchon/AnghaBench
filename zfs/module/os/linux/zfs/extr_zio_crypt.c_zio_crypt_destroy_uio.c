
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uio_iovcnt; scalar_t__ uio_iov; } ;
typedef TYPE_1__ uio_t ;
typedef int iovec_t ;


 int kmem_free (scalar_t__,int) ;

__attribute__((used)) static void
zio_crypt_destroy_uio(uio_t *uio)
{
 if (uio->uio_iov)
  kmem_free(uio->uio_iov, uio->uio_iovcnt * sizeof (iovec_t));
}
