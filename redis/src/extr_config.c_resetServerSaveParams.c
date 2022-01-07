
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ saveparamslen; int * saveparams; } ;


 TYPE_1__ server ;
 int zfree (int *) ;

void resetServerSaveParams(void) {
    zfree(server.saveparams);
    server.saveparams = ((void*)0);
    server.saveparamslen = 0;
}
