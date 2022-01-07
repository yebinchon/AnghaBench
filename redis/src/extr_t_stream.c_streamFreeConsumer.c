
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int pel; } ;
typedef TYPE_1__ streamConsumer ;


 int raxFree (int ) ;
 int sdsfree (int ) ;
 int zfree (TYPE_1__*) ;

void streamFreeConsumer(streamConsumer *sc) {
    raxFree(sc->pel);

    sdsfree(sc->name);
    zfree(sc);
}
