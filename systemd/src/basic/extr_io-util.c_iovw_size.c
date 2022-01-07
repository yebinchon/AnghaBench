
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iovec_wrapper {size_t count; TYPE_1__* iovec; } ;
struct TYPE_2__ {scalar_t__ iov_len; } ;



size_t iovw_size(struct iovec_wrapper *iovw) {
        size_t n = 0, i;

        for (i = 0; i < iovw->count; i++)
                n += iovw->iovec[i].iov_len;

        return n;
}
