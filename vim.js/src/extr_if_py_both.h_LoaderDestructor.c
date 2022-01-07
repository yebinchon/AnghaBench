
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int module; } ;
typedef TYPE_1__ LoaderObject ;


 int DESTRUCTOR_FINISH (TYPE_1__*) ;
 int Py_DECREF (int ) ;

__attribute__((used)) static void
LoaderDestructor(LoaderObject *self)
{
    Py_DECREF(self->module);
    DESTRUCTOR_FINISH(self);
}
