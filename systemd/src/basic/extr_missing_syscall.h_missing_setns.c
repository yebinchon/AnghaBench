
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int __NR_setns ;
 int errno ;
 int syscall (int ,int,int) ;

__attribute__((used)) static inline int missing_setns(int fd, int nstype) {



        errno = ENOSYS;
        return -1;

}
