
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int end; int start; int buf; } ;
typedef TYPE_1__ RangeObject ;
typedef int PyObject ;


 int * RBAppend (int ,int *,int ,int ,int *) ;

__attribute__((used)) static PyObject *
RangeAppend(RangeObject *self, PyObject *args)
{
    return RBAppend(self->buf, args, self->start, self->end, &self->end);
}
