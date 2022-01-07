
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec_wrapper {int dummy; } ;


 struct iovec_wrapper* malloc0 (int) ;

struct iovec_wrapper *iovw_new(void) {
        return malloc0(sizeof(struct iovec_wrapper));
}
