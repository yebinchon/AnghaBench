
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int visitproc ;
struct TYPE_3__ {int (* traverse ) (int ,int ,void*) ;int cur; } ;
typedef TYPE_1__ IterObject ;


 int stub1 (int ,int ,void*) ;

__attribute__((used)) static int
IterTraverse(IterObject *self, visitproc visit, void *arg)
{
    if (self->traverse != ((void*)0))
 return self->traverse(self->cur, visit, arg);
    else
 return 0;
}
