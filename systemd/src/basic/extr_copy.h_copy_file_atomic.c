
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int CopyFlags ;


 int copy_file_atomic_full (char const*,char const*,int ,unsigned int,unsigned int,int ,int *,int *) ;

__attribute__((used)) static inline int copy_file_atomic(const char *from, const char *to, mode_t mode, unsigned chattr_flags, unsigned chattr_mask, CopyFlags copy_flags) {
        return copy_file_atomic_full(from, to, mode, chattr_flags, chattr_mask, copy_flags, ((void*)0), ((void*)0));
}
