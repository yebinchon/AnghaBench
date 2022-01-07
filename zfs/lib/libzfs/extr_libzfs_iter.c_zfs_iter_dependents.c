
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_iter_f ;
typedef int zfs_handle_t ;
struct TYPE_3__ {int first; void* data; int func; int * stack; int allowrecursion; } ;
typedef TYPE_1__ iter_dependents_arg_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int iter_dependents_cb (int ,TYPE_1__*) ;
 int zfs_handle_dup (int *) ;

int
zfs_iter_dependents(zfs_handle_t *zhp, boolean_t allowrecursion,
    zfs_iter_f func, void *data)
{
 iter_dependents_arg_t ida;
 ida.allowrecursion = allowrecursion;
 ida.stack = ((void*)0);
 ida.func = func;
 ida.data = data;
 ida.first = B_TRUE;
 return (iter_dependents_cb(zfs_handle_dup(zhp), &ida));
}
