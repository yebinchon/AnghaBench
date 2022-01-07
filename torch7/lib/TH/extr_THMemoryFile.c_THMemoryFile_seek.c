
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hasError; int isQuiet; } ;
struct TYPE_4__ {size_t size; size_t position; TYPE_1__ file; int * storage; } ;
typedef TYPE_2__ THMemoryFile ;
typedef int THFile ;


 int THArgCheck (int,int,char*) ;
 int THError (char*,size_t) ;

__attribute__((used)) static void THMemoryFile_seek(THFile *self, size_t position)
{
  THMemoryFile *mfself = (THMemoryFile*)self;

  THArgCheck(mfself->storage != ((void*)0), 1, "attempt to use a closed file");
  THArgCheck(position >= 0, 2, "position must be positive");

  if(position <= mfself->size)
    mfself->position = position;
  else
  {
    mfself->file.hasError = 1;
    if(!mfself->file.isQuiet)
      THError("unable to seek at position %zu", position);
  }
}
