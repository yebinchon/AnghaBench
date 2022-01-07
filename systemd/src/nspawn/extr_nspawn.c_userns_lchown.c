
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef scalar_t__ gid_t ;


 int EOVERFLOW ;
 scalar_t__ GID_INVALID ;
 scalar_t__ UID_INVALID ;
 scalar_t__ USER_NAMESPACE_NO ;
 scalar_t__ arg_uid_range ;
 scalar_t__ arg_uid_shift ;
 scalar_t__ arg_userns_mode ;
 int assert (char const*) ;
 int errno ;
 scalar_t__ lchown (char const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int userns_lchown(const char *p, uid_t uid, gid_t gid) {
        assert(p);

        if (arg_userns_mode == USER_NAMESPACE_NO)
                return 0;

        if (uid == UID_INVALID && gid == GID_INVALID)
                return 0;

        if (uid != UID_INVALID) {
                uid += arg_uid_shift;

                if (uid < arg_uid_shift || uid >= arg_uid_shift + arg_uid_range)
                        return -EOVERFLOW;
        }

        if (gid != GID_INVALID) {
                gid += (gid_t) arg_uid_shift;

                if (gid < (gid_t) arg_uid_shift || gid >= (gid_t) (arg_uid_shift + arg_uid_range))
                        return -EOVERFLOW;
        }

        if (lchown(p, uid, gid) < 0)
                return -errno;

        return 0;
}
