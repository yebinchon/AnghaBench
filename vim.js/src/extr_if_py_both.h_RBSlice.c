
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ml_line_count; } ;
struct TYPE_8__ {TYPE_1__ b_ml; } ;
struct TYPE_7__ {TYPE_4__* buf; } ;
typedef int PyObject ;
typedef int PyInt ;
typedef TYPE_2__ BufferObject ;


 scalar_t__ CheckBuffer (TYPE_2__*) ;
 int * GetBufferLineList (TYPE_4__*,int,int) ;

__attribute__((used)) static PyObject *
RBSlice(BufferObject *self, PyInt lo, PyInt hi, PyInt start, PyInt end)
{
    PyInt size;

    if (CheckBuffer(self))
 return ((void*)0);

    if (end == -1)
 end = self->buf->b_ml.ml_line_count;

    size = end - start + 1;

    if (lo < 0)
 lo = 0;
    else if (lo > size)
 lo = size;
    if (hi < 0)
 hi = 0;
    if (hi < lo)
 hi = lo;
    else if (hi > size)
 hi = size;

    return GetBufferLineList(self->buf, lo+start, hi+start);
}
