
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int errno ;
 scalar_t__ mkdir (char const*,int ) ;

int mkdir_errno_wrapper(const char *pathname, mode_t mode) {
        if (mkdir(pathname, mode) < 0)
                return -errno;
        return 0;
}
