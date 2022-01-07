
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int list; int ref; } ;
typedef TYPE_1__ ListObject ;


 int DESTRUCTOR_FINISH (TYPE_1__*) ;
 int lastlist ;
 int list_unref (int ) ;
 int pyll_remove (int *,int *) ;

__attribute__((used)) static void
ListDestructor(ListObject *self)
{
    pyll_remove(&self->ref, &lastlist);
    list_unref(self->list);

    DESTRUCTOR_FINISH(self);
}
