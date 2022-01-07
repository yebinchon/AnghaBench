
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ENOSYS ;
 int __NR_kcmp ;
 int errno ;
 int syscall (int ,int ,int ,int,unsigned long,unsigned long) ;

__attribute__((used)) static inline int missing_kcmp(pid_t pid1, pid_t pid2, int type, unsigned long idx1, unsigned long idx2) {



        errno = ENOSYS;
        return -1;

}
