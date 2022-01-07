
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path {TYPE_1__* dentry; } ;
struct kstat {int atime; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int current_time (struct inode*) ;
 int generic_fillattr (struct inode*,struct kstat*) ;

__attribute__((used)) static int
zpl_root_getattr_impl(const struct path *path, struct kstat *stat,
    u32 request_mask, unsigned int query_flags)
{
 struct inode *ip = path->dentry->d_inode;

 generic_fillattr(ip, stat);
 stat->atime = current_time(ip);

 return (0);
}
