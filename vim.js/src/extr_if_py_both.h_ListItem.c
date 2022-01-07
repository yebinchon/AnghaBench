
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int li_tv; } ;
typedef TYPE_1__ listitem_T ;
struct TYPE_7__ {int list; } ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_2__ ListObject ;


 int * ConvertToPyObject (int *) ;
 scalar_t__ ListLength (TYPE_2__*) ;
 int N_ (char*) ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyErr_VIM_FORMAT (int ,int) ;
 int PyExc_IndexError ;
 TYPE_1__* list_find (int ,long) ;

__attribute__((used)) static PyObject *
ListItem(ListObject *self, Py_ssize_t index)
{
    listitem_T *li;

    if (index >= ListLength(self))
    {
 PyErr_SET_STRING(PyExc_IndexError, N_("list index out of range"));
 return ((void*)0);
    }
    li = list_find(self->list, (long) index);
    if (li == ((void*)0))
    {

 PyErr_VIM_FORMAT(N_("internal error: failed to get vim list item %d"),
  (int) index);
 return ((void*)0);
    }
    return ConvertToPyObject(&li->li_tv);
}
