
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec_wrapper {scalar_t__ count; int * iovec; int size_bytes; } ;


 int E2BIG ;
 int GREEDY_REALLOC (int *,int ,scalar_t__) ;
 int IOVEC_MAKE (void*,size_t) ;
 scalar_t__ IOV_MAX ;
 int log_oom () ;

int iovw_put(struct iovec_wrapper *iovw, void *data, size_t len) {
        if (iovw->count >= IOV_MAX)
                return -E2BIG;

        if (!GREEDY_REALLOC(iovw->iovec, iovw->size_bytes, iovw->count + 1))
                return log_oom();

        iovw->iovec[iovw->count++] = IOVEC_MAKE(data, len);
        return 0;
}
