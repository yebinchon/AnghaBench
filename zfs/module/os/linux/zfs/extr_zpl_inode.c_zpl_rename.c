
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int zpl_rename2 (struct inode*,struct dentry*,struct inode*,struct dentry*,int ) ;

__attribute__((used)) static int
zpl_rename(struct inode *sdip, struct dentry *sdentry,
    struct inode *tdip, struct dentry *tdentry)
{
 return (zpl_rename2(sdip, sdentry, tdip, tdentry, 0));
}
