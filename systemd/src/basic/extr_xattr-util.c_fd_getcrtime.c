
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;


 int AT_EMPTY_PATH ;
 int fd_getcrtime_at (int,int *,int *,int ) ;

int fd_getcrtime(int fd, usec_t *ret) {
        return fd_getcrtime_at(fd, ((void*)0), ret, AT_EMPTY_PATH);
}
