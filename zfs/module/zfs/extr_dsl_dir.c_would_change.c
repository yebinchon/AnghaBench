
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {struct TYPE_7__* dd_parent; int dd_lock; } ;
typedef TYPE_1__ dsl_dir_t ;
struct TYPE_8__ {int dd_used_bytes; } ;


 TYPE_5__* dsl_dir_phys (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int parent_delta (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int64_t
would_change(dsl_dir_t *dd, int64_t delta, dsl_dir_t *ancestor)
{
 if (dd == ancestor)
  return (delta);

 mutex_enter(&dd->dd_lock);
 delta = parent_delta(dd, dsl_dir_phys(dd)->dd_used_bytes, delta);
 mutex_exit(&dd->dd_lock);
 return (would_change(dd->dd_parent, delta, ancestor));
}
