
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_lock; int * ds_owner; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int boolean_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

boolean_t
dsl_dataset_has_owner(dsl_dataset_t *ds)
{
 boolean_t rv;
 mutex_enter(&ds->ds_lock);
 rv = (ds->ds_owner != ((void*)0));
 mutex_exit(&ds->ds_lock);
 return (rv);
}
