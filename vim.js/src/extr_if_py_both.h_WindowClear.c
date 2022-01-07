
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tabObject; } ;
typedef TYPE_1__ WindowObject ;


 int Py_CLEAR (int ) ;

__attribute__((used)) static int
WindowClear(WindowObject *self)
{
    Py_CLEAR(self->tabObject);
    return 0;
}
