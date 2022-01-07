
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cgroups; scalar_t__ rax; } ;
typedef TYPE_1__ stream ;


 scalar_t__ lpFree ;
 int raxFreeWithCallback (scalar_t__,void (*) (void*)) ;
 scalar_t__ streamFreeCG ;
 int zfree (TYPE_1__*) ;

void freeStream(stream *s) {
    raxFreeWithCallback(s->rax,(void(*)(void*))lpFree);
    if (s->cgroups)
        raxFreeWithCallback(s->cgroups,(void(*)(void*))streamFreeCG);
    zfree(s);
}
