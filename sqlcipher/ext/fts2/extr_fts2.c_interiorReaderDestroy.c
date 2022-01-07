
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int term; } ;
typedef TYPE_1__ InteriorReader ;


 int SCRAMBLE (TYPE_1__*) ;
 int dataBufferDestroy (int *) ;

__attribute__((used)) static void interiorReaderDestroy(InteriorReader *pReader){
  dataBufferDestroy(&pReader->term);
  SCRAMBLE(pReader);
}
