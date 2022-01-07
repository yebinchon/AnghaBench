
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int mode_t ;
typedef int gid_t ;


 int EEXIST ;
 int mkdir_errno_wrapper (char const*,int ) ;
 char* prefix_roota (char const*,char const*) ;
 int userns_lchown (char const*,int ,int ) ;

__attribute__((used)) static int userns_mkdir(const char *root, const char *path, mode_t mode, uid_t uid, gid_t gid) {
        const char *q;
        int r;

        q = prefix_roota(root, path);
        r = mkdir_errno_wrapper(q, mode);
        if (r == -EEXIST)
                return 0;
        if (r < 0)
                return r;

        return userns_lchown(q, uid, gid);
}
