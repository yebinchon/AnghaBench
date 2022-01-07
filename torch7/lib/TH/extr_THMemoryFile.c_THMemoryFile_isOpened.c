
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * storage; } ;
typedef TYPE_1__ THMemoryFile ;
typedef int THFile ;



__attribute__((used)) static int THMemoryFile_isOpened(THFile *self)
{
  THMemoryFile *mfself = (THMemoryFile*)self;
  return (mfself->storage != ((void*)0));
}
