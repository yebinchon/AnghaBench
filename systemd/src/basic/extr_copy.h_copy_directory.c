
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CopyFlags ;


 int copy_directory_full (char const*,char const*,int ,int *,int *,int *) ;

__attribute__((used)) static inline int copy_directory(const char *from, const char *to, CopyFlags copy_flags) {
        return copy_directory_full(from, to, copy_flags, ((void*)0), ((void*)0), ((void*)0));
}
