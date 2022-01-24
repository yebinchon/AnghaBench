#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UInt64 ;
typedef  scalar_t__ UInt32 ;
struct TYPE_24__ {scalar_t__* data; int /*<<< orphan*/  size; } ;
struct TYPE_23__ {int startPosAfterHeader; } ;
struct TYPE_22__ {scalar_t__* Data; int /*<<< orphan*/  Size; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* Seek ) (TYPE_1__*,int*,int /*<<< orphan*/ ) ;} ;
typedef  scalar_t__ SRes ;
typedef  int Int64 ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  TYPE_1__ ILookInStream ;
typedef  TYPE_2__ CSzData ;
typedef  TYPE_3__ CSzArEx ;
typedef  TYPE_4__ CBuf ;
typedef  scalar_t__ Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (scalar_t__*,size_t) ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 
 size_t FUNC5 (scalar_t__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ SZ_ERROR_ARCHIVE ; 
 scalar_t__ SZ_ERROR_CRC ; 
 scalar_t__ SZ_ERROR_INPUT_EOF ; 
 scalar_t__ SZ_ERROR_MEM ; 
 scalar_t__ SZ_ERROR_NO_ARCHIVE ; 
 scalar_t__ SZ_ERROR_UNSUPPORTED ; 
 scalar_t__ SZ_OK ; 
 int /*<<< orphan*/  SZ_SEEK_CUR ; 
 int /*<<< orphan*/  SZ_SEEK_END ; 
 scalar_t__ FUNC10 (TYPE_1__*,TYPE_2__*,TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_2__*,size_t*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*) ; 
 size_t k7zIdEncodedHeader ; 
 size_t k7zIdHeader ; 
 scalar_t__ k7zMajorVersion ; 
 int k7zStartHeaderSize ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SRes FUNC16(
    CSzArEx *p,
    ILookInStream *inStream,
    ISzAlloc *allocMain,
    ISzAlloc *allocTemp)
{
  Byte header[k7zStartHeaderSize];
  Int64 startArcPos;
  UInt64 nextHeaderOffset, nextHeaderSize;
  size_t nextHeaderSizeT;
  UInt32 nextHeaderCRC;
  CBuf buffer;
  SRes res;

  startArcPos = 0;
  FUNC9(inStream->Seek(inStream, &startArcPos, SZ_SEEK_CUR));

  FUNC9(FUNC7(inStream, header, k7zStartHeaderSize, SZ_ERROR_NO_ARCHIVE));

  if (!FUNC13(header))
    return SZ_ERROR_NO_ARCHIVE;
  if (header[6] != k7zMajorVersion)
    return SZ_ERROR_UNSUPPORTED;

  nextHeaderOffset = FUNC5(header + 12);
  nextHeaderSize = FUNC5(header + 20);
  nextHeaderCRC = FUNC4(header + 28);

  p->startPosAfterHeader = startArcPos + k7zStartHeaderSize;
  
  if (FUNC3(header + 12, 20) != FUNC4(header + 8))
    return SZ_ERROR_CRC;

  nextHeaderSizeT = (size_t)nextHeaderSize;
  if (nextHeaderSizeT != nextHeaderSize)
    return SZ_ERROR_MEM;
  if (nextHeaderSizeT == 0)
    return SZ_OK;
  if (nextHeaderOffset > nextHeaderOffset + nextHeaderSize ||
      nextHeaderOffset > nextHeaderOffset + nextHeaderSize + k7zStartHeaderSize)
    return SZ_ERROR_NO_ARCHIVE;

  {
    Int64 pos = 0;
    FUNC9(inStream->Seek(inStream, &pos, SZ_SEEK_END));
    if ((UInt64)pos < startArcPos + nextHeaderOffset ||
        (UInt64)pos < startArcPos + k7zStartHeaderSize + nextHeaderOffset ||
        (UInt64)pos < startArcPos + k7zStartHeaderSize + nextHeaderOffset + nextHeaderSize)
      return SZ_ERROR_INPUT_EOF;
  }

  FUNC9(FUNC8(inStream, startArcPos + k7zStartHeaderSize + nextHeaderOffset));

  if (!FUNC0(&buffer, nextHeaderSizeT, allocTemp))
    return SZ_ERROR_MEM;

  res = FUNC6(inStream, buffer.data, nextHeaderSizeT);
  if (res == SZ_OK)
  {
    res = SZ_ERROR_ARCHIVE;
    if (FUNC3(buffer.data, nextHeaderSizeT) == nextHeaderCRC)
    {
      CSzData sd;
      UInt64 type;
      sd.Data = buffer.data;
      sd.Size = buffer.size;
      res = FUNC12(&sd, &type);
      if (res == SZ_OK)
      {
        if (type == k7zIdEncodedHeader)
        {
          CBuf outBuffer;
          FUNC2(&outBuffer);
          res = FUNC10(inStream, &sd, &outBuffer, p->startPosAfterHeader, allocTemp);
          if (res != SZ_OK)
            FUNC1(&outBuffer, allocTemp);
          else
          {
            FUNC1(&buffer, allocTemp);
            buffer.data = outBuffer.data;
            buffer.size = outBuffer.size;
            sd.Data = buffer.data;
            sd.Size = buffer.size;
            res = FUNC12(&sd, &type);
          }
        }
      }
      if (res == SZ_OK)
      {
        if (type == k7zIdHeader)
          res = FUNC11(p, &sd, allocMain, allocTemp);
        else
          res = SZ_ERROR_UNSUPPORTED;
      }
    }
  }
  FUNC1(&buffer, allocTemp);
  return res;
}