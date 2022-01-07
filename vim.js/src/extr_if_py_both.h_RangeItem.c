
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int end; int start; int buf; } ;
typedef TYPE_1__ RangeObject ;
typedef int PyObject ;
typedef int PyInt ;


 int * RBItem (int ,int ,int ,int ) ;

__attribute__((used)) static PyObject *
RangeItem(RangeObject *self, PyInt n)
{
    return RBItem(self->buf, n, self->start, self->end);
}
