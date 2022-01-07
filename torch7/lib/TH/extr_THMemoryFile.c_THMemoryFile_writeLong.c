
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
typedef long int32_t ;
struct TYPE_5__ {scalar_t__ isAutoSpacing; scalar_t__ isBinary; int isWritable; } ;
struct TYPE_7__ {int longSize; size_t position; size_t size; TYPE_2__* storage; TYPE_1__ file; } ;
struct TYPE_6__ {char* data; int size; } ;
typedef TYPE_3__ THMemoryFile ;
typedef int THFile ;


 int THArgCheck (int ,int,char*) ;
 int THDiskFile_isLittleEndianCPU () ;
 int THMemoryFile_grow (TYPE_3__*,size_t) ;
 int memmove (char*,long*,size_t) ;
 int snprintf (char*,int,char*,long) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static size_t THMemoryFile_writeLong(THFile *self, long *data, size_t n)
{
  THMemoryFile *mfself = (THMemoryFile*)self;

  THArgCheck(mfself->storage != ((void*)0), 1, "attempt to use a closed file");
  THArgCheck(mfself->file.isWritable, 1, "attempt to write in a read-only file");

  if (n == 0)
    return 0;

  if(mfself->file.isBinary)
  {
    if(mfself->longSize == 0 || mfself->longSize == sizeof(long))
    {
      size_t nByte = sizeof(long)*n;
      THMemoryFile_grow(mfself, mfself->position+nByte);
      memmove(mfself->storage->data+mfself->position, data, nByte);
      mfself->position += nByte;
    } else if(mfself->longSize == 4)
    {
      size_t nByte = 4*n;
      THMemoryFile_grow(mfself, mfself->position+nByte);
      int32_t *storage = (int32_t *)(mfself->storage->data + mfself->position);
      size_t i;
      for(i = 0; i < n; i++)
        storage[i] = data[i];
      mfself->position += nByte;
    }
    else
    {
      int big_endian = !THDiskFile_isLittleEndianCPU();
      size_t nByte = 8*n;
      THMemoryFile_grow(mfself, mfself->position+nByte);
      int32_t *storage = (int32_t *)(mfself->storage->data + mfself->position);
      size_t i;
      for(i = 0; i < n; i++)
      {
        storage[2*i + !big_endian] = 0;
        storage[2*i + big_endian] = data[i];
      }
      mfself->position += nByte;
    }
    if(mfself->position > mfself->size)
    {
      mfself->size = mfself->position;
      mfself->storage->data[mfself->size] = '\0';
    }
  }
  else
  {
    size_t i;
    for(i = 0; i < n; i++)
    {
      ssize_t nByteWritten;
      while (1)
      {
        nByteWritten = snprintf(mfself->storage->data+mfself->position, mfself->storage->size-mfself->position, "%ld", data[i]);
        if( (nByteWritten > -1) && (nByteWritten < mfself->storage->size-mfself->position) )
        {
          mfself->position += nByteWritten;
          break;
        }
        THMemoryFile_grow(mfself, mfself->storage->size + (mfself->storage->size/2) + 2);
      }
      if(mfself->file.isAutoSpacing)
      {
        if(i < n-1)
        {
          THMemoryFile_grow(mfself, mfself->position+1);
          sprintf(mfself->storage->data+mfself->position, " ");
          mfself->position++;
        }
        if(i == n-1)
        {
          THMemoryFile_grow(mfself, mfself->position+1);
          sprintf(mfself->storage->data+mfself->position, "\n");
          mfself->position++;
        }
      }
    }
    if(mfself->position > mfself->size)
    {
      mfself->size = mfself->position;
      mfself->storage->data[mfself->size] = '\0';
    }
  }

  return n;
}
