
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int acl ;


 int ENODATA ;
 int ENOSYS ;
 int ENOTTY ;
 int EOPNOTSUPP ;
 scalar_t__ IN_SET (int ,int ,int ,int ,int ) ;
 int errno ;
 scalar_t__ lgetxattr (char const*,char*,char*,int) ;

__attribute__((used)) static bool has_xattr(const char *p) {
        char buffer[sizeof(acl) * 4];

        if (lgetxattr(p, "system.posix_acl_access", buffer, sizeof(buffer)) < 0) {
                if (IN_SET(errno, EOPNOTSUPP, ENOTTY, ENODATA, ENOSYS))
                        return 0;
        }

        return 1;
}
