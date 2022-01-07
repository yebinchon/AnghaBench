
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * storage; scalar_t__ size; } ;
typedef TYPE_1__ THMemoryFile ;
typedef int THFile ;
typedef int THCharStorage ;


 int THArgCheck (int ,int,char*) ;
 int THCharStorage_resize (int *,scalar_t__) ;

THCharStorage *THMemoryFile_storage(THFile *self)
{
  THMemoryFile *mfself = (THMemoryFile*)self;
  THArgCheck(mfself->storage != ((void*)0), 1, "attempt to use a closed file");

  THCharStorage_resize(mfself->storage, mfself->size+1);

  return mfself->storage;
}
