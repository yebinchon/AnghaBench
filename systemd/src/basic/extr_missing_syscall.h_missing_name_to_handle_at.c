
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_handle {int dummy; } ;


 int ENOSYS ;
 int __NR_name_to_handle_at ;
 int errno ;
 int syscall (int ,int,char const*,struct file_handle*,int*,int) ;

__attribute__((used)) static inline int missing_name_to_handle_at(int fd, const char *name, struct file_handle *handle, int *mnt_id, int flags) {



        errno = ENOSYS;
        return -1;

}
