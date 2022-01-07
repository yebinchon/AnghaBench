
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int consumers; int pel; } ;
typedef TYPE_1__ streamCG ;


 int raxFreeWithCallback (int ,void (*) (void*)) ;
 scalar_t__ streamFreeConsumer ;
 scalar_t__ streamFreeNACK ;
 int zfree (TYPE_1__*) ;

void streamFreeCG(streamCG *cg) {
    raxFreeWithCallback(cg->pel,(void(*)(void*))streamFreeNACK);
    raxFreeWithCallback(cg->consumers,(void(*)(void*))streamFreeConsumer);
    zfree(cg);
}
