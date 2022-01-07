
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int visitproc ;
struct TYPE_3__ {scalar_t__ tabObject; } ;
typedef TYPE_1__ WindowObject ;
typedef int PyObject ;


 int Py_VISIT (int *) ;

__attribute__((used)) static int
WindowTraverse(WindowObject *self, visitproc visit, void *arg)
{
    Py_VISIT(((PyObject *)(self->tabObject)));
    return 0;
}
