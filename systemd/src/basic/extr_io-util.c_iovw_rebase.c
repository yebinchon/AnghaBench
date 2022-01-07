
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iovec_wrapper {size_t count; TYPE_1__* iovec; } ;
struct TYPE_2__ {char* iov_base; } ;



void iovw_rebase(struct iovec_wrapper *iovw, char *old, char *new) {
        size_t i;

        for (i = 0; i < iovw->count; i++)
                iovw->iovec[i].iov_base = (char *)iovw->iovec[i].iov_base - old + new;
}
