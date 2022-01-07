
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int longSize; } ;
typedef TYPE_1__ THMemoryFile ;
typedef int THFile ;


 int THArgCheck (int,int,char*) ;

void THMemoryFile_longSize(THFile *self, int size)
{
  THMemoryFile *dfself = (THMemoryFile*)(self);
  THArgCheck(size == 0 || size == 4 || size == 8, 1, "Invalid long size specified");
  dfself->longSize = size;
}
