
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int fstrans_cookie_t ;
struct TYPE_2__ {int (* zv_create_minor ) (char*) ;} ;






 TYPE_1__* ops ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;
 int * strchr (char*,char) ;
 int stub1 (char*) ;
 int stub2 (char*) ;
 int zvol_remove_minor_impl (char*) ;
 int const zvol_volmode ;

__attribute__((used)) static void
zvol_set_volmode_impl(char *name, uint64_t volmode)
{
 fstrans_cookie_t cookie = spl_fstrans_mark();

 if (strchr(name, '@') != ((void*)0))
  return;
 switch (volmode) {
  case 128:
   (void) zvol_remove_minor_impl(name);
   break;
  case 129:
  case 130:
   (void) zvol_remove_minor_impl(name);
   (void) ops->zv_create_minor(name);
   break;
  case 131:
   (void) zvol_remove_minor_impl(name);
   if (zvol_volmode == 128)
    break;
   else
    (void) ops->zv_create_minor(name);
   break;
 }

 spl_fstrans_unmark(cookie);
}
