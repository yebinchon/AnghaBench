
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zthr_t ;
typedef int zthr_func_t ;
typedef int zthr_checkfunc_t ;
typedef int hrtime_t ;


 int * zthr_create_timer (int *,int *,void*,int ) ;

zthr_t *
zthr_create(zthr_checkfunc_t *checkfunc, zthr_func_t *func, void *arg)
{
 return (zthr_create_timer(checkfunc, func, arg, (hrtime_t)0));
}
