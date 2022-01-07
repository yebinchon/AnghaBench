
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tab; } ;
typedef TYPE_1__ TabPageObject ;
typedef int PyObject ;


 scalar_t__ INVALID_TABPAGE_VALUE ;
 int * PyString_FromFormat (char*,...) ;
 int get_tab_number (scalar_t__) ;

__attribute__((used)) static PyObject *
TabPageRepr(TabPageObject *self)
{
    if (self->tab == INVALID_TABPAGE_VALUE)
 return PyString_FromFormat("<tabpage object (deleted) at %p>", (self));
    else
    {
 int t = get_tab_number(self->tab);

 if (t == 0)
     return PyString_FromFormat("<tabpage object (unknown) at %p>",
     (self));
 else
     return PyString_FromFormat("<tabpage %d>", t - 1);
    }
}
