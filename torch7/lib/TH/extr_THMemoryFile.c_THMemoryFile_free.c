
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ storage; } ;
typedef TYPE_1__ THMemoryFile ;
typedef int THFile ;


 int THCharStorage_free (scalar_t__) ;
 int THFree (TYPE_1__*) ;

__attribute__((used)) static void THMemoryFile_free(THFile *self)
{
  THMemoryFile *mfself = (THMemoryFile*)self;

  if(mfself->storage)
    THCharStorage_free(mfself->storage);

  THFree(mfself);
}
