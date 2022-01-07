
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CopyFlags ;


 int copy_file_fd_full (char const*,int,int ,int *,int *) ;

__attribute__((used)) static inline int copy_file_fd(const char *from, int to, CopyFlags copy_flags) {
        return copy_file_fd_full(from, to, copy_flags, ((void*)0), ((void*)0));
}
