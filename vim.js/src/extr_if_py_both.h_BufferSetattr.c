
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int char_u ;
typedef int aco_save_T ;
struct TYPE_4__ {int buf; } ;
typedef int PyObject ;
typedef TYPE_1__ BufferObject ;


 scalar_t__ CheckBuffer (TYPE_1__*) ;
 int FAIL ;
 int N_ (char*) ;
 int PyErr_SET_VIM (int ) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 int Py_XDECREF (int *) ;
 int * StringToChars (int *,int **) ;
 scalar_t__ VimTryEnd () ;
 int VimTryStart () ;
 int aucmd_prepbuf (int *,int ) ;
 int aucmd_restbuf (int *) ;
 int rename_buffer (int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
BufferSetattr(BufferObject *self, char *name, PyObject *valObject)
{
    if (CheckBuffer(self))
 return -1;

    if (strcmp(name, "name") == 0)
    {
 char_u *val;
 aco_save_T aco;
 int ren_ret;
 PyObject *todecref;

 if (!(val = StringToChars(valObject, &todecref)))
     return -1;

 VimTryStart();

 aucmd_prepbuf(&aco, self->buf);
 ren_ret = rename_buffer(val);
 aucmd_restbuf(&aco);
 Py_XDECREF(todecref);
 if (VimTryEnd())
     return -1;

 if (ren_ret == FAIL)
 {
     PyErr_SET_VIM(N_("failed to rename buffer"));
     return -1;
 }
 return 0;
    }
    else
    {
 PyErr_SetString(PyExc_AttributeError, name);
 return -1;
    }
}
