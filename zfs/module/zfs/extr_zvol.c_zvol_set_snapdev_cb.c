
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int snapdev; } ;
typedef TYPE_1__ zvol_snapdev_cb_arg_t ;
struct TYPE_4__ {int (* zv_create_minor ) (char const*) ;} ;




 TYPE_2__* ops ;
 int * strchr (char const*,char) ;
 int stub1 (char const*) ;
 int zvol_remove_minor_impl (char const*) ;

__attribute__((used)) static int
zvol_set_snapdev_cb(const char *dsname, void *param)
{
 zvol_snapdev_cb_arg_t *arg = param;

 if (strchr(dsname, '@') == ((void*)0))
  return (0);

 switch (arg->snapdev) {
  case 128:
   (void) ops->zv_create_minor(dsname);
   break;
  case 129:
   (void) zvol_remove_minor_impl(dsname);
   break;
 }

 return (0);
}
