
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CopyFlags ;


 int copy_directory_fd_full (int,char const*,int ,int *,int *,int *) ;

__attribute__((used)) static inline int copy_directory_fd(int dirfd, const char *to, CopyFlags copy_flags) {
        return copy_directory_fd_full(dirfd, to, copy_flags, ((void*)0), ((void*)0), ((void*)0));
}
