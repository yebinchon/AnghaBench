
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int isReadable; int hasError; int isQuiet; } ;
struct TYPE_4__ {TYPE_1__ file; int * handle; } ;
typedef int THFile ;
typedef TYPE_2__ THDiskFile ;


 size_t TBRS_BSZ ;
 char* THAlloc (size_t) ;
 int THArgCheck (int,int,char*) ;
 int THError (char*) ;
 int THFree (char*) ;
 char* THRealloc (char*,size_t) ;
 int * fgets (char*,size_t,int *) ;
 scalar_t__ fread (char*,int,size_t,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static size_t THDiskFile_readString(THFile *self, const char *format, char **str_)
{
  THDiskFile *dfself = (THDiskFile*)(self);
  THArgCheck(dfself->handle != ((void*)0), 1, "attempt to use a closed file");
  THArgCheck(dfself->file.isReadable, 1, "attempt to read in a write-only file");
  THArgCheck((strlen(format) >= 2 ? (format[0] == '*') && (format[1] == 'a' || format[1] == 'l') : 0), 2, "format must be '*a' or '*l'");





  if(format[1] == 'a')
  {
    char *p = THAlloc(1024L);
    size_t total = 1024L;
    size_t pos = 0;

    for (;;)
    {
      if(total-pos == 0)
      {
        total += 1024L;
        p = THRealloc(p, total);
      }
      pos += fread(p+pos, 1, total-pos, dfself->handle);
      if (pos < total)
      {
        if(pos == 0)
        {
          THFree(p);
          dfself->file.hasError = 1;
          if(!dfself->file.isQuiet)
            THError("read error: read 0 blocks instead of 1");

          *str_ = ((void*)0);
          return 0;
        }
        *str_ = p;
        return pos;
      }
    }
  }
  else
  {
    char *p = THAlloc(1024L);
    size_t total = 1024L;
    size_t pos = 0;
    size_t size;

    for (;;)
    {
      if(total-pos <= 1)
      {
        total += 1024L;
        p = THRealloc(p, total);
      }
      if (fgets(p+pos, total-pos, dfself->handle) == ((void*)0))
      {
        if(pos == 0)
        {
          THFree(p);
          dfself->file.hasError = 1;
          if(!dfself->file.isQuiet)
            THError("read error: read 0 blocks instead of 1");

          *str_ = ((void*)0);
          return 0;
        }
        *str_ = p;
        return pos;
      }
      size = strlen(p+pos);
      if (size == 0 || (p+pos)[size-1] != '\n')
      {
        pos += size;
      }
      else
      {
        pos += size-1;
        *str_ = p;
        return pos;
      }
    }
  }

  *str_ = ((void*)0);
  return 0;
}
