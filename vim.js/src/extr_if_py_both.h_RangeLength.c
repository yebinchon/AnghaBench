
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int end; int start; int buf; } ;
typedef TYPE_1__ RangeObject ;
typedef int PyInt ;


 scalar_t__ CheckBuffer (int ) ;

__attribute__((used)) static PyInt
RangeLength(RangeObject *self)
{

    if (CheckBuffer(self->buf))
 return -1;

    return (self->end - self->start + 1);
}
