
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int isWritable; } ;
struct TYPE_7__ {int position; int size; TYPE_2__* storage; TYPE_1__ file; } ;
struct TYPE_6__ {char* data; } ;
typedef TYPE_3__ THMemoryFile ;
typedef int THFile ;


 int THArgCheck (int ,int,char*) ;
 int THMemoryFile_grow (TYPE_3__*,int) ;
 int memmove (char*,char const*,size_t) ;

__attribute__((used)) static size_t THMemoryFile_writeString(THFile *self, const char *str, size_t size)
{
  THMemoryFile *mfself = (THMemoryFile*)self;

  THArgCheck(mfself->storage != ((void*)0), 1, "attempt to use a closed file");
  THArgCheck(mfself->file.isWritable, 1, "attempt to write in a read-only file");

  THMemoryFile_grow(mfself, mfself->position+size);
  memmove(mfself->storage->data+mfself->position, str, size);
  mfself->position += size;
  if(mfself->position > mfself->size)
  {
    mfself->size = mfself->position;
    mfself->storage->data[mfself->size] = '\0';
  }

  return size;
}
