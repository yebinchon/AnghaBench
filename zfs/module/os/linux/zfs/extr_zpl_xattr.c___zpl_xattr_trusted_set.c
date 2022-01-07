
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int EINVAL ;
 int XATTR_TRUSTED_PREFIX ;
 int capable (int ) ;
 char* kmem_asprintf (char*,int ,char const*) ;
 int kmem_strfree (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int zpl_xattr_set (struct inode*,char*,void const*,size_t,int) ;

__attribute__((used)) static int
__zpl_xattr_trusted_set(struct inode *ip, const char *name,
    const void *value, size_t size, int flags)
{
 char *xattr_name;
 int error;

 if (!capable(CAP_SYS_ADMIN))
  return (-EACCES);


 if (strcmp(name, "") == 0)
  return (-EINVAL);

 xattr_name = kmem_asprintf("%s%s", XATTR_TRUSTED_PREFIX, name);
 error = zpl_xattr_set(ip, xattr_name, value, size, flags);
 kmem_strfree(xattr_name);

 return (error);
}
