
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* buf; } ;
struct TYPE_4__ {int b_next; } ;
typedef int PyObject ;
typedef TYPE_2__ BufferObject ;


 int * BufferNew (int ) ;
 scalar_t__ CheckBuffer (TYPE_2__*) ;

__attribute__((used)) static PyObject *
BufMapIterNext(PyObject **buffer)
{
    PyObject *next;
    PyObject *ret;

    if (!*buffer)
 return ((void*)0);

    ret = *buffer;

    if (CheckBuffer((BufferObject *)(ret)))
    {
 *buffer = ((void*)0);
 return ((void*)0);
    }

    if (!((BufferObject *)(ret))->buf->b_next)
 next = ((void*)0);
    else if (!(next = BufferNew(((BufferObject *)(ret))->buf->b_next)))
 return ((void*)0);
    *buffer = next;


    return ret;
}
