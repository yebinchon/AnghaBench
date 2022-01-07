
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dd_myname; int dd_lock; struct TYPE_3__* dd_parent; } ;
typedef TYPE_1__ dsl_dir_t ;


 int MUTEX_HELD (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ strlen (int ) ;

int
dsl_dir_namelen(dsl_dir_t *dd)
{
 int result = 0;

 if (dd->dd_parent) {

  result = dsl_dir_namelen(dd->dd_parent) + 1;
 }

 if (!MUTEX_HELD(&dd->dd_lock)) {

  mutex_enter(&dd->dd_lock);
  result += strlen(dd->dd_myname);
  mutex_exit(&dd->dd_lock);
 } else {
  result += strlen(dd->dd_myname);
 }

 return (result);
}
