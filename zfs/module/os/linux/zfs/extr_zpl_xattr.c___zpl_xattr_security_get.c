
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EINVAL ;
 int XATTR_SECURITY_PREFIX ;
 char* kmem_asprintf (char*,int ,char const*) ;
 int kmem_strfree (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int zpl_xattr_get (struct inode*,char*,void*,size_t) ;

__attribute__((used)) static int
__zpl_xattr_security_get(struct inode *ip, const char *name,
    void *value, size_t size)
{
 char *xattr_name;
 int error;


 if (strcmp(name, "") == 0)
  return (-EINVAL);

 xattr_name = kmem_asprintf("%s%s", XATTR_SECURITY_PREFIX, name);
 error = zpl_xattr_get(ip, xattr_name, value, size);
 kmem_strfree(xattr_name);

 return (error);
}
