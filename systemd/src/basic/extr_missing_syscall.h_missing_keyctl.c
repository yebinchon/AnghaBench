
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int __NR_keyctl ;
 int errno ;
 long syscall (int ,int,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static inline long missing_keyctl(int cmd, unsigned long arg2, unsigned long arg3, unsigned long arg4, unsigned long arg5) {



        errno = ENOSYS;
        return -1;



}
