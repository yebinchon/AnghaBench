
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hi_key; } ;
typedef TYPE_1__ hashitem_T ;
typedef int PyObject ;


 int * PyBytes_FromString (char*) ;

__attribute__((used)) static PyObject *
dict_key(hashitem_T *hi)
{
    return PyBytes_FromString((char *)(hi->hi_key));
}
