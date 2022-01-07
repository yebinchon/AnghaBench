
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int loff_t ;


 int ENOSYS ;
 int __NR_copy_file_range ;
 int errno ;
 int syscall (int ,int,int *,int,int *,size_t,unsigned int) ;

__attribute__((used)) static inline ssize_t missing_copy_file_range(int fd_in, loff_t *off_in,
                                              int fd_out, loff_t *off_out,
                                              size_t len,
                                              unsigned int flags) {



        errno = ENOSYS;
        return -1;

}
