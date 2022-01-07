
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int checkfun ;
struct TYPE_5__ {int b_vars; int b_fnum; int * b_ffname; } ;
struct TYPE_4__ {TYPE_2__* buf; } ;
typedef int PyObject ;
typedef TYPE_1__ BufferObject ;


 int BufferAttrs ;
 scalar_t__ CheckBuffer ;
 int * NEW_DICTIONARY (int ) ;
 int * ObjectDir (int *,int ) ;
 int * OptionsNew (int ,TYPE_2__*,int ,int *) ;
 int * PyString_FromString (char*) ;
 int * Py_BuildValue (int ,int ) ;
 int Py_ssize_t_fmt ;
 int SREQ_BUF ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static PyObject *
BufferAttr(BufferObject *self, char *name)
{
    if (strcmp(name, "name") == 0)
 return PyString_FromString((self->buf->b_ffname == ((void*)0)
        ? "" : (char *)self->buf->b_ffname));
    else if (strcmp(name, "number") == 0)
 return Py_BuildValue(Py_ssize_t_fmt, self->buf->b_fnum);
    else if (strcmp(name, "vars") == 0)
 return NEW_DICTIONARY(self->buf->b_vars);
    else if (strcmp(name, "options") == 0)
 return OptionsNew(SREQ_BUF, self->buf, (checkfun) CheckBuffer,
   (PyObject *) self);
    else if (strcmp(name, "__members__") == 0)
 return ObjectDir(((void*)0), BufferAttrs);
    else
 return ((void*)0);
}
