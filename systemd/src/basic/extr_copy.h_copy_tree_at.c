
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;
typedef int CopyFlags ;


 int copy_tree_at_full (int,char const*,int,char const*,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static inline int copy_tree_at(int fdf, const char *from, int fdt, const char *to, uid_t override_uid, gid_t override_gid, CopyFlags copy_flags) {
        return copy_tree_at_full(fdf, from, fdt, to, override_uid, override_gid, copy_flags, ((void*)0), ((void*)0), ((void*)0));
}
