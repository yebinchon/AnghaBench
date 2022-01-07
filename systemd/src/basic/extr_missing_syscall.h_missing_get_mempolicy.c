
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int __NR_get_mempolicy ;
 int errno ;
 long syscall (int ,int*,unsigned long*,unsigned long,void*,unsigned long) ;

__attribute__((used)) static inline long missing_get_mempolicy(int *mode, unsigned long *nodemask,
                           unsigned long maxnode, void *addr,
                           unsigned long flags) {
        long i;



        errno = ENOSYS;
        i = -1;

        return i;
}
