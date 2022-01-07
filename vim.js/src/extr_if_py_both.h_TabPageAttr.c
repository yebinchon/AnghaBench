
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* tab; } ;
typedef TYPE_1__ TabPageObject ;
struct TYPE_8__ {int tp_curwin; int tp_vars; } ;
typedef int PyObject ;


 int * NEW_DICTIONARY (int ) ;
 int * ObjectDir (int *,int ) ;
 int * PyLong_FromLong (long) ;
 int TabPageAttrs ;
 int * WinListNew (TYPE_1__*) ;
 int * WindowNew (int ,TYPE_2__*) ;
 TYPE_2__* curtab ;
 int curwin ;
 scalar_t__ get_tab_number (TYPE_2__*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static PyObject *
TabPageAttr(TabPageObject *self, char *name)
{
    if (strcmp(name, "windows") == 0)
 return WinListNew(self);
    else if (strcmp(name, "number") == 0)
 return PyLong_FromLong((long) get_tab_number(self->tab));
    else if (strcmp(name, "vars") == 0)
 return NEW_DICTIONARY(self->tab->tp_vars);
    else if (strcmp(name, "window") == 0)
    {


 if (self->tab == curtab)
     return WindowNew(curwin, curtab);
 else
     return WindowNew(self->tab->tp_curwin, self->tab);
    }
    else if (strcmp(name, "__members__") == 0)
 return ObjectDir(((void*)0), TabPageAttrs);
    return ((void*)0);
}
