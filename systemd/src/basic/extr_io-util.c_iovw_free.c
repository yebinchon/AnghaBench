
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec_wrapper {int dummy; } ;


 int iovw_free_contents (struct iovec_wrapper*,int) ;
 struct iovec_wrapper* mfree (struct iovec_wrapper*) ;

struct iovec_wrapper *iovw_free(struct iovec_wrapper *iovw) {
        iovw_free_contents(iovw, 0);

        return mfree(iovw);
}
