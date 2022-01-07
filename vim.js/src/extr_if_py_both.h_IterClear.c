
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* clear ) (int *) ;int cur; } ;
typedef TYPE_1__ IterObject ;


 int stub1 (int *) ;

__attribute__((used)) static int
IterClear(IterObject *self)
{
    if (self->clear != ((void*)0))
 return self->clear(&self->cur);
    else
 return 0;
}
