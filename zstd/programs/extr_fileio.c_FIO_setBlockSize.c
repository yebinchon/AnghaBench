
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nbWorkers; int blockSize; } ;
typedef TYPE_1__ FIO_prefs_t ;


 int DISPLAYLEVEL (int,char*) ;

void FIO_setBlockSize(FIO_prefs_t* const prefs, int blockSize) {
    if (blockSize && prefs->nbWorkers==0)
        DISPLAYLEVEL(2, "Setting block size is useless in single-thread mode \n");
    prefs->blockSize = blockSize;
}
