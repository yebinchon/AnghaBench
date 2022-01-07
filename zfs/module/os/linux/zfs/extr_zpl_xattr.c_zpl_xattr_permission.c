
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct dentry* dentry; } ;
typedef TYPE_1__ xattr_filldir_t ;
struct xattr_handler {int (* list ) (struct xattr_handler const*,struct dentry*,int *,int ,char const*,int) ;} ;
struct dentry {int dummy; } ;


 int stub1 (struct dentry*) ;
 int stub2 (struct dentry*,int *,int ,char const*,int,int ) ;
 int stub3 (struct xattr_handler const*,struct dentry*,int *,int ,char const*,int) ;
 struct xattr_handler* zpl_xattr_handler (char const*) ;

__attribute__((used)) static int
zpl_xattr_permission(xattr_filldir_t *xf, const char *name, int name_len)
{
 static const struct xattr_handler *handler;
 struct dentry *d = xf->dentry;

 handler = zpl_xattr_handler(name);
 if (!handler)
  return (0);

 if (handler->list) {
 }

 return (1);
}
