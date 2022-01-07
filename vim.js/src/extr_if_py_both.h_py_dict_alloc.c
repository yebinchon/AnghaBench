
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dv_refcount; } ;
typedef TYPE_1__ dict_T ;


 int PyErr_NoMemory () ;
 TYPE_1__* dict_alloc () ;

__attribute__((used)) static dict_T *
py_dict_alloc(void)
{
    dict_T *ret;

    if (!(ret = dict_alloc()))
    {
 PyErr_NoMemory();
 return ((void*)0);
    }
    ++ret->dv_refcount;

    return ret;
}
