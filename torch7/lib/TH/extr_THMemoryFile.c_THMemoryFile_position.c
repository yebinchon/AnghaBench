
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t position; int * storage; } ;
typedef TYPE_1__ THMemoryFile ;
typedef int THFile ;


 int THArgCheck (int ,int,char*) ;

__attribute__((used)) static size_t THMemoryFile_position(THFile *self)
{
  THMemoryFile *mfself = (THMemoryFile*)self;
  THArgCheck(mfself->storage != ((void*)0), 1, "attempt to use a closed file");
  return mfself->position;
}
