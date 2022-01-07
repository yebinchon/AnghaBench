
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* buf; } ;
struct TYPE_7__ {scalar_t__ ml_line_count; } ;
struct TYPE_8__ {TYPE_1__ b_ml; } ;
typedef int Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_3__ BufferObject ;


 int * BufferItem (TYPE_3__*,long) ;
 int * BufferSlice (TYPE_3__*,int ,int ) ;
 scalar_t__ CheckBuffer (TYPE_3__*) ;
 long PyLong_AsLong (int *) ;
 scalar_t__ PyLong_Check (int *) ;
 scalar_t__ PySlice_Check (int *) ;
 scalar_t__ PySlice_GetIndicesEx (int *,int ,int *,int *,int *,int *) ;
 int RAISE_INVALID_INDEX_TYPE (int *) ;

__attribute__((used)) static PyObject *
BufferSubscript(PyObject *self, PyObject* idx)
{
    if (PyLong_Check(idx))
    {
 long _idx = PyLong_AsLong(idx);
 return BufferItem((BufferObject *)(self), _idx);
    } else if (PySlice_Check(idx))
    {
 Py_ssize_t start, stop, step, slicelen;

 if (CheckBuffer((BufferObject *) self))
     return ((void*)0);

 if (PySlice_GetIndicesEx((PyObject *)idx,
       (Py_ssize_t)((BufferObject *)(self))->buf->b_ml.ml_line_count,
       &start, &stop,
       &step, &slicelen) < 0)
 {
     return ((void*)0);
 }
 return BufferSlice((BufferObject *)(self), start, stop);
    }
    else
    {
 RAISE_INVALID_INDEX_TYPE(idx);
 return ((void*)0);
    }
}
