#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  long int32_t ;
struct TYPE_5__ {scalar_t__ isAutoSpacing; scalar_t__ isBinary; int /*<<< orphan*/  isWritable; } ;
struct TYPE_7__ {int longSize; size_t position; size_t size; TYPE_2__* storage; TYPE_1__ file; } ;
struct TYPE_6__ {char* data; int size; } ;
typedef  TYPE_3__ THMemoryFile ;
typedef  int /*<<< orphan*/  THFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,long*,size_t) ; 
 int FUNC4 (char*,int,char*,long) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static size_t FUNC6(THFile *self, long *data, size_t n)
{
  THMemoryFile *mfself = (THMemoryFile*)self;

  FUNC0(mfself->storage != NULL, 1, "attempt to use a closed file");
  FUNC0(mfself->file.isWritable, 1, "attempt to write in a read-only file");

  if (n == 0)
    return 0;

  if(mfself->file.isBinary)
  {
    if(mfself->longSize == 0 || mfself->longSize == sizeof(long))
    {
      size_t nByte = sizeof(long)*n;
      FUNC2(mfself, mfself->position+nByte);
      FUNC3(mfself->storage->data+mfself->position, data, nByte);
      mfself->position += nByte;
    } else if(mfself->longSize == 4)
    {
      size_t nByte = 4*n;
      FUNC2(mfself, mfself->position+nByte);
      int32_t *storage = (int32_t *)(mfself->storage->data + mfself->position);
      size_t i;
      for(i = 0; i < n; i++)
        storage[i] = data[i];
      mfself->position += nByte;
    }
    else /* if(mfself->longSize == 8) */
    {
      int big_endian = !FUNC1();
      size_t nByte = 8*n;
      FUNC2(mfself, mfself->position+nByte);
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
        nByteWritten = FUNC4(mfself->storage->data+mfself->position, mfself->storage->size-mfself->position, "%ld", data[i]);
        if( (nByteWritten > -1) && (nByteWritten < mfself->storage->size-mfself->position) )
        {
          mfself->position += nByteWritten;
          break;
        }
        FUNC2(mfself, mfself->storage->size + (mfself->storage->size/2) + 2);
      }
      if(mfself->file.isAutoSpacing)
      {
        if(i < n-1)
        {
          FUNC2(mfself, mfself->position+1);
          FUNC5(mfself->storage->data+mfself->position, " ");
          mfself->position++;
        }
        if(i == n-1)
        {
          FUNC2(mfself, mfself->position+1);
          FUNC5(mfself->storage->data+mfself->position, "\n");
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