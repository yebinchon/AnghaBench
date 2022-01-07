
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr {int value_len; int value; int * name; } ;
struct inode {int dummy; } ;


 int __zpl_xattr_security_set (struct inode*,int *,int ,int ,int ) ;

__attribute__((used)) static int
zpl_xattr_security_init_impl(struct inode *ip, const struct xattr *xattrs,
    void *fs_info)
{
 const struct xattr *xattr;
 int error = 0;

 for (xattr = xattrs; xattr->name != ((void*)0); xattr++) {
  error = __zpl_xattr_security_set(ip,
      xattr->name, xattr->value, xattr->value_len, 0);

  if (error < 0)
   break;
 }

 return (error);
}
