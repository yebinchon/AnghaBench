
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int mode_t ;


 int EEXIST ;
 int UID_INVALID ;
 int assert (char const*) ;
 int errno ;
 scalar_t__ lchown (char const*,int ,int ) ;
 int mkdir_errno_wrapper (char const*,int ) ;

__attribute__((used)) static int mkdir_userns(const char *path, mode_t mode, uid_t uid_shift) {
        int r;

        assert(path);

        r = mkdir_errno_wrapper(path, mode);
        if (r < 0 && r != -EEXIST)
                return r;

        if (uid_shift == UID_INVALID)
                return 0;

        if (lchown(path, uid_shift, uid_shift) < 0)
                return -errno;

        return 0;
}
