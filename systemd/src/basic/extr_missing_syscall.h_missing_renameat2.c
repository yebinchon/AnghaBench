
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int __NR_renameat2 ;
 int errno ;
 int syscall (int ,int,char const*,int,char const*,unsigned int) ;

__attribute__((used)) static inline int missing_renameat2(int oldfd, const char *oldname, int newfd, const char *newname, unsigned flags) {



        errno = ENOSYS;
        return -1;

}
