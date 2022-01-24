#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UInt64 ;
typedef  int UInt32 ;
struct TYPE_8__ {scalar_t__ flags; scalar_t__ packSize; scalar_t__ unpackSize; TYPE_1__* filters; } ;
struct TYPE_7__ {scalar_t__ id; int propsSize; int* props; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_1__ CXzFilter ;
typedef  TYPE_2__ CXzBlock ;
typedef  scalar_t__ Byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const*,int) ; 
 scalar_t__ FUNC1 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const*,unsigned int,int,scalar_t__*) ; 
 int /*<<< orphan*/  SZ_ERROR_ARCHIVE ; 
 int /*<<< orphan*/  SZ_OK ; 
 scalar_t__ XZ_FILTER_PROPS_SIZE_MAX ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 

SRes FUNC8(CXzBlock *p, const Byte *header)
{
  unsigned pos;
  int numFilters, i;
  UInt32 headerSize = (UInt32)header[0] << 2;

  if (FUNC0(header, headerSize) != FUNC1(header + headerSize))
    return SZ_ERROR_ARCHIVE;

  pos = 1;
  if (pos == headerSize)
    return SZ_ERROR_ARCHIVE;
  p->flags = header[pos++];

  if (FUNC4(p))
  {
    FUNC2(header, pos, headerSize, &p->packSize);
    if (p->packSize == 0 || p->packSize + headerSize >= (UInt64)1 << 63)
      return SZ_ERROR_ARCHIVE;
  }

  if (FUNC5(p))
    FUNC2(header, pos, headerSize, &p->unpackSize);

  numFilters = FUNC3(p);
  for (i = 0; i < numFilters; i++)
  {
    CXzFilter *filter = p->filters + i;
    UInt64 size;
    FUNC2(header, pos, headerSize, &filter->id);
    FUNC2(header, pos, headerSize, &size);
    if (size > headerSize - pos || size > XZ_FILTER_PROPS_SIZE_MAX)
      return SZ_ERROR_ARCHIVE;
    filter->propsSize = (UInt32)size;
    FUNC6(filter->props, header + pos, (size_t)size);
    pos += (unsigned)size;

    #ifdef XZ_DUMP
    printf("\nf[%d] = %2X: ", i, filter->id);
    {
      int i;
      for (i = 0; i < size; i++)
        printf(" %2X", filter->props[i]);
    }
    #endif
  }

  while (pos < headerSize)
    if (header[pos++] != 0)
      return SZ_ERROR_ARCHIVE;
  return SZ_OK;
}