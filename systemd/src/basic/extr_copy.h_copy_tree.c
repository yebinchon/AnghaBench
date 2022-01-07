
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;
typedef int CopyFlags ;


 int AT_FDCWD ;
 int copy_tree_at_full (int ,char const*,int ,char const*,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static inline int copy_tree(const char *from, const char *to, uid_t override_uid, gid_t override_gid, CopyFlags copy_flags) {
        return copy_tree_at_full(AT_FDCWD, from, AT_FDCWD, to, override_uid, override_gid, copy_flags, ((void*)0), ((void*)0), ((void*)0));
}
