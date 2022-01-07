
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ lnum; scalar_t__ col; } ;
typedef TYPE_1__ pos_T ;
typedef char char_u ;
typedef int buf_T ;
struct TYPE_7__ {int buf; } ;
typedef int PyObject ;
typedef TYPE_2__ BufferObject ;


 scalar_t__ CheckBuffer (TYPE_2__*) ;
 int FALSE ;
 int N_ (char*) ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyErr_SET_VIM (int ) ;
 int PyExc_ValueError ;
 int * Py_BuildValue (char*,long,long) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 int Py_XDECREF (int *) ;
 char* StringToChars (int *,int **) ;
 scalar_t__ VimTryEnd () ;
 int VimTryStart () ;
 TYPE_1__* getmark (char,int ) ;
 int restore_buffer (int *) ;
 int switch_buffer (int **,int ) ;

__attribute__((used)) static PyObject *
BufferMark(BufferObject *self, PyObject *pmarkObject)
{
    pos_T *posp;
    char_u *pmark;
    char_u mark;
    buf_T *savebuf;
    PyObject *todecref;

    if (CheckBuffer(self))
 return ((void*)0);

    if (!(pmark = StringToChars(pmarkObject, &todecref)))
 return ((void*)0);

    if (pmark[0] == '\0' || pmark[1] != '\0')
    {
 PyErr_SET_STRING(PyExc_ValueError,
  N_("mark name must be a single character"));
 Py_XDECREF(todecref);
 return ((void*)0);
    }

    mark = *pmark;

    Py_XDECREF(todecref);

    VimTryStart();
    switch_buffer(&savebuf, self->buf);
    posp = getmark(mark, FALSE);
    restore_buffer(savebuf);
    if (VimTryEnd())
 return ((void*)0);

    if (posp == ((void*)0))
    {
 PyErr_SET_VIM(N_("invalid mark name"));
 return ((void*)0);
    }

    if (posp->lnum <= 0)
    {

 Py_INCREF(Py_None);
 return Py_None;
    }

    return Py_BuildValue("(ll)", (long)(posp->lnum), (long)(posp->col));
}
