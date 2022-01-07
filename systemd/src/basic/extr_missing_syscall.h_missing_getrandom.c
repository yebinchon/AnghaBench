
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int __NR_getrandom ;
 int errno ;
 int syscall (int ,void*,size_t,unsigned int) ;

__attribute__((used)) static inline int missing_getrandom(void *buffer, size_t count, unsigned flags) {



        errno = ENOSYS;
        return -1;

}
