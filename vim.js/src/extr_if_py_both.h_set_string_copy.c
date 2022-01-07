
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * v_string; } ;
struct TYPE_5__ {TYPE_1__ vval; } ;
typedef TYPE_2__ typval_T ;
typedef int char_u ;


 int PyErr_NoMemory () ;
 int * vim_strsave (int *) ;

__attribute__((used)) static int
set_string_copy(char_u *str, typval_T *tv)
{
    tv->vval.v_string = vim_strsave(str);
    if (tv->vval.v_string == ((void*)0))
    {
 PyErr_NoMemory();
 return -1;
    }
    return 0;
}
