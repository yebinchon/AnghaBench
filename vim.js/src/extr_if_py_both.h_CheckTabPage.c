
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tab; } ;
typedef TYPE_1__ TabPageObject ;


 scalar_t__ INVALID_TABPAGE_VALUE ;
 int N_ (char*) ;
 int PyErr_SET_VIM (int ) ;

__attribute__((used)) static int
CheckTabPage(TabPageObject *self)
{
    if (self->tab == INVALID_TABPAGE_VALUE)
    {
 PyErr_SET_VIM(N_("attempt to refer to deleted tab page"));
 return -1;
    }

    return 0;
}
