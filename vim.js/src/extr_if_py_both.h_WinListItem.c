
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int win_T ;
struct TYPE_4__ {TYPE_2__* tabObject; } ;
typedef TYPE_1__ WinListObject ;
struct TYPE_5__ {int tab; } ;
typedef int PyObject ;
typedef scalar_t__ PyInt ;


 int N_ (char*) ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyExc_IndexError ;
 int * W_NEXT (int *) ;
 int * WindowNew (int *,int ) ;
 int curtab ;
 int * get_firstwin (TYPE_2__*) ;

__attribute__((used)) static PyObject *
WinListItem(WinListObject *self, PyInt n)
{
    win_T *w;

    if (!(w = get_firstwin(self->tabObject)))
 return ((void*)0);

    for (; w != ((void*)0); w = W_NEXT(w), --n)
 if (n == 0)
     return WindowNew(w, self->tabObject? self->tabObject->tab: curtab);

    PyErr_SET_STRING(PyExc_IndexError, N_("no such window"));
    return ((void*)0);
}
