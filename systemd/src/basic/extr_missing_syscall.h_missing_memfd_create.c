
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int __NR_memfd_create ;
 int errno ;
 int syscall (int ,char const*,unsigned int) ;

__attribute__((used)) static inline int missing_memfd_create(const char *name, unsigned int flags) {



        errno = ENOSYS;
        return -1;

}
