
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;


 int security_inode_init_security (struct inode*,struct inode*,struct qstr const*,int *,int *) ;
 int zpl_xattr_security_init_impl ;

int
zpl_xattr_security_init(struct inode *ip, struct inode *dip,
    const struct qstr *qstr)
{
 return security_inode_init_security(ip, dip, qstr,
     &zpl_xattr_security_init_impl, ((void*)0));
}
