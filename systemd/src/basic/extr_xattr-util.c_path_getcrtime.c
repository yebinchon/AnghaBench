
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;


 int AT_FDCWD ;
 int fd_getcrtime_at (int ,char const*,int *,int ) ;

int path_getcrtime(const char *p, usec_t *ret) {
        return fd_getcrtime_at(AT_FDCWD, p, ret, 0);
}
