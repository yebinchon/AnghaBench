
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iovec_wrapper {size_t count; scalar_t__ size_bytes; TYPE_1__* iovec; } ;
struct TYPE_3__ {int iov_base; } ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

void iovw_free_contents(struct iovec_wrapper *iovw, bool free_vectors) {
        if (free_vectors)
                for (size_t i = 0; i < iovw->count; i++)
                        free(iovw->iovec[i].iov_base);

        iovw->iovec = mfree(iovw->iovec);
        iovw->count = 0;
        iovw->size_bytes = 0;
}
