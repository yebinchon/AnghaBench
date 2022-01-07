
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int __NR_set_mempolicy ;
 int errno ;
 long syscall (int ,int,unsigned long const*,unsigned long) ;

__attribute__((used)) static inline long missing_set_mempolicy(int mode, const unsigned long *nodemask,
                           unsigned long maxnode) {
        long i;



        errno = ENOSYS;
        i = -1;

        return i;
}
