
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iovec {size_t iov_len; int * iov_base; } ;


 struct iovec IOVEC_MAKE (int *,int ) ;

__attribute__((used)) static void iovec_advance(struct iovec iov[], unsigned *idx, size_t size) {

        while (size > 0) {
                struct iovec *i = iov + *idx;

                if (i->iov_len > size) {
                        i->iov_base = (uint8_t*) i->iov_base + size;
                        i->iov_len -= size;
                        return;
                }

                size -= i->iov_len;

                *i = IOVEC_MAKE(((void*)0), 0);

                (*idx)++;
        }
}
