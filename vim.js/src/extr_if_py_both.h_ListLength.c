
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* list; } ;
struct TYPE_4__ {scalar_t__ lv_len; } ;
typedef int PyInt ;
typedef TYPE_2__ ListObject ;



__attribute__((used)) static PyInt
ListLength(ListObject *self)
{
    return ((PyInt) (self->list->lv_len));
}
