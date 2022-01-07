
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int inode_timespec_t ;
struct TYPE_3__ {int dd_lock; int dd_snap_cmtime; } ;
typedef TYPE_1__ dsl_dir_t ;


 int gethrestime (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dsl_dir_snap_cmtime_update(dsl_dir_t *dd)
{
 inode_timespec_t t;

 gethrestime(&t);
 mutex_enter(&dd->dd_lock);
 dd->dd_snap_cmtime = t;
 mutex_exit(&dd->dd_lock);
}
