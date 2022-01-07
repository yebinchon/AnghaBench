
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* buf; } ;
struct TYPE_6__ {int ml_line_count; } ;
struct TYPE_7__ {TYPE_1__ b_ml; } ;
typedef int PyInt ;
typedef TYPE_3__ BufferObject ;


 scalar_t__ CheckBuffer (TYPE_3__*) ;

__attribute__((used)) static PyInt
BufferLength(BufferObject *self)
{

    if (CheckBuffer(self))
 return -1;

    return (PyInt)(self->buf->b_ml.ml_line_count);
}
