#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  long int32_t ;
struct TYPE_3__ {int hasError; int /*<<< orphan*/  isQuiet; scalar_t__ isAutoSpacing; scalar_t__ isBinary; int /*<<< orphan*/  isReadable; } ;
struct TYPE_4__ {int longSize; TYPE_1__ file; int /*<<< orphan*/ * handle; int /*<<< orphan*/  isNativeEncoding; } ;
typedef  int /*<<< orphan*/  THFile ;
typedef  TYPE_2__ THDiskFile ;

/* Variables and functions */
 int EOF ; 
 long* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (long*,long*,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (long*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (long*,int,size_t,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,long*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC10(THFile *self, long *data, size_t n)
{
  THDiskFile *dfself = (THDiskFile*)(self);
  size_t nread = 0L;

  FUNC1(dfself->handle != NULL, 1, "attempt to use a closed file");
  FUNC1(dfself->file.isReadable, 1, "attempt to read in a write-only file");

  if(dfself->file.isBinary)
  {
    if(dfself->longSize == 0 || dfself->longSize == sizeof(long))
    {
      nread = FUNC7(data, sizeof(long), n, dfself->handle);
      if(!dfself->isNativeEncoding && (sizeof(long) > 1) && (nread > 0))
        FUNC3(data, data, sizeof(long), nread);
    } else if(dfself->longSize == 4)
    {
      nread = FUNC7(data, 4, n, dfself->handle);
      if(!dfself->isNativeEncoding && (nread > 0))
        FUNC3(data, data, 4, nread);
      size_t i;
      for(i = nread; i > 0; i--)
        data[i-1] = ((int *)data)[i-1];
    }
    else /* if(dfself->longSize == 8) */
    {
      int big_endian = !FUNC2();
      int32_t *buffer = FUNC0(8*n);
      nread = FUNC7(buffer, 8, n, dfself->handle);
      size_t i;
      for(i = nread; i > 0; i--)
        data[i-1] = buffer[2*(i-1) + big_endian];
      FUNC5(buffer);
      if(!dfself->isNativeEncoding && (nread > 0))
        FUNC3(data, data, 4, nread);
     }
  }
  else
  {
    size_t i;
    for(i = 0; i < n; i++)
    {
      int ret = FUNC8(dfself->handle, "%ld", &data[i]); if(ret <= 0) break; else nread++;
    }
    if(dfself->file.isAutoSpacing && (n > 0))
    {
      int c = FUNC6(dfself->handle);
      if( (c != '\n') && (c != EOF) )
        FUNC9(c, dfself->handle);
    }
  }

  if(nread != n)
  {
    dfself->file.hasError = 1; /* shouldn't we put hasError to 0 all the time ? */
    if(!dfself->file.isQuiet)
      FUNC4("read error: read %d blocks instead of %d", nread, n);
  }

  return nread;
}