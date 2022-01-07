
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int loff_t ;
typedef int cred_t ;


 int ERANGE ;
 int LOOKUP_XATTR ;
 int UIO_SYSSPACE ;
 size_t i_size_read (struct inode*) ;
 int iput (struct inode*) ;
 int zfs_lookup (struct inode*,char*,struct inode**,int ,int *,int *,int *) ;
 int zpl_read_common (struct inode*,void*,size_t,int *,int ,int ,int *) ;

__attribute__((used)) static int
zpl_xattr_get_dir(struct inode *ip, const char *name, void *value,
    size_t size, cred_t *cr)
{
 struct inode *dxip = ((void*)0);
 struct inode *xip = ((void*)0);
 loff_t pos = 0;
 int error;


 error = -zfs_lookup(ip, ((void*)0), &dxip, LOOKUP_XATTR, cr, ((void*)0), ((void*)0));
 if (error)
  goto out;


 error = -zfs_lookup(dxip, (char *)name, &xip, 0, cr, ((void*)0), ((void*)0));
 if (error)
  goto out;

 if (!size) {
  error = i_size_read(xip);
  goto out;
 }

 if (size < i_size_read(xip)) {
  error = -ERANGE;
  goto out;
 }

 error = zpl_read_common(xip, value, size, &pos, UIO_SYSSPACE, 0, cr);
out:
 if (xip)
  iput(xip);

 if (dxip)
  iput(dxip);

 return (error);
}
