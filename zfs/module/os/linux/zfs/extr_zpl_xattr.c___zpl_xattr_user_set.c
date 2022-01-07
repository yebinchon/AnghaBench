
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int z_flags; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 TYPE_1__* ITOZSB (struct inode*) ;
 int XATTR_USER_PREFIX ;
 int ZSB_XATTR ;
 char* kmem_asprintf (char*,int ,char const*) ;
 int kmem_strfree (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int zpl_xattr_set (struct inode*,char*,void const*,size_t,int) ;

__attribute__((used)) static int
__zpl_xattr_user_set(struct inode *ip, const char *name,
    const void *value, size_t size, int flags)
{
 char *xattr_name;
 int error;


 if (strcmp(name, "") == 0)
  return (-EINVAL);

 if (!(ITOZSB(ip)->z_flags & ZSB_XATTR))
  return (-EOPNOTSUPP);

 xattr_name = kmem_asprintf("%s%s", XATTR_USER_PREFIX, name);
 error = zpl_xattr_set(ip, xattr_name, value, size, flags);
 kmem_strfree(xattr_name);

 return (error);
}
