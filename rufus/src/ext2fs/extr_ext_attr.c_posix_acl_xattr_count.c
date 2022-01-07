
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int posix_acl_xattr_header ;
typedef int posix_acl_xattr_entry ;



__attribute__((used)) static inline int
posix_acl_xattr_count(size_t size)
{
        if (size < sizeof(posix_acl_xattr_header))
                return -1;
        size -= sizeof(posix_acl_xattr_header);
        if (size % sizeof(posix_acl_xattr_entry))
                return -1;
        return size / sizeof(posix_acl_xattr_entry);
}
