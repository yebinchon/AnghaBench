
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nbWorkers; } ;
typedef TYPE_1__ FIO_prefs_t ;


 int DISPLAYLEVEL (int,char*) ;

void FIO_setNbWorkers(FIO_prefs_t* const prefs, int nbWorkers) {

    if (nbWorkers > 0) DISPLAYLEVEL(2, "Note : multi-threading is disabled \n");

    prefs->nbWorkers = nbWorkers;
}
