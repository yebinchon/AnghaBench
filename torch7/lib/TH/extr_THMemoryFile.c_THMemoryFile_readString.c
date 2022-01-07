
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int isReadable; int hasError; int isQuiet; } ;
struct TYPE_6__ {scalar_t__ position; scalar_t__ size; TYPE_2__* storage; TYPE_1__ file; } ;
struct TYPE_5__ {char* data; } ;
typedef TYPE_3__ THMemoryFile ;
typedef int THFile ;


 int THArgCheck (int,int,char*) ;
 int THError (char*) ;
 char* THMemoryFile_cloneString (char*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static size_t THMemoryFile_readString(THFile *self, const char *format, char **str_)
{
  THMemoryFile *mfself = (THMemoryFile*)self;

  THArgCheck(mfself->storage != ((void*)0), 1, "attempt to use a closed file");
  THArgCheck(mfself->file.isReadable, 1, "attempt to read in a write-only file");
  THArgCheck((strlen(format) >= 2 ? (format[0] == '*') && (format[1] == 'a' || format[1] == 'l') : 0), 2, "format must be '*a' or '*l'");

  if(mfself->position == mfself->size)
  {
    mfself->file.hasError = 1;
    if(!mfself->file.isQuiet)
      THError("read error: read 0 blocks instead of 1");

    *str_ = ((void*)0);
    return 0;
  }

  if(format[1] == 'a')
  {
    size_t str_size = mfself->size-mfself->position;

    *str_ = THMemoryFile_cloneString(mfself->storage->data+mfself->position, str_size);
    mfself->position = mfself->size;

    return str_size;
  }
  else
  {
    char *p = mfself->storage->data+mfself->position;
    int eolFound = 0;
    size_t posEol;
    size_t i;
    for(i = 0; i < mfself->size-mfself->position; i++)
    {
      if(p[i] == '\n')
      {
        posEol = i;
        eolFound = 1;
        break;
      }
    }

    if(eolFound)
    {
      *str_ = THMemoryFile_cloneString(mfself->storage->data+mfself->position, posEol);
      mfself->position += posEol+1;
      return posEol;
    }
    else
    {
      size_t str_size = mfself->size-mfself->position;

      *str_ = THMemoryFile_cloneString(mfself->storage->data+mfself->position, str_size);
      mfself->position = mfself->size;

      return str_size;
    }
  }

  *str_ = ((void*)0);
  return 0;
}
