#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UInt64 ;
struct TYPE_15__ {scalar_t__ dicBufSize; scalar_t__ dicPos; int /*<<< orphan*/ * dic; } ;
struct TYPE_12__ {scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {TYPE_1__ Props; } ;
struct TYPE_13__ {scalar_t__ (* Skip ) (void*,scalar_t__) ;scalar_t__ (* Look ) (void*,void const**,size_t*) ;} ;
typedef  scalar_t__ SizeT ;
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  TYPE_2__ ILookInStream ;
typedef  scalar_t__ ELzmaStatus ;
typedef  TYPE_3__ CSzCoderInfo ;
typedef  TYPE_4__ CLzmaDec ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  LZMA_FINISH_END ; 
 scalar_t__ LZMA_STATUS_FINISHED_WITH_MARK ; 
 scalar_t__ LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SZ_ERROR_DATA ; 
 scalar_t__ SZ_OK ; 
 scalar_t__ FUNC6 (void*,void const**,size_t*) ; 
 scalar_t__ FUNC7 (void*,scalar_t__) ; 

__attribute__((used)) static SRes FUNC8(CSzCoderInfo *coder, UInt64 inSize, ILookInStream *inStream,
    Byte *outBuffer, SizeT outSize, ISzAlloc *allocMain)
{
  CLzmaDec state;
  SRes res = SZ_OK;

  FUNC1(&state);
  FUNC5(FUNC0(&state, coder->Props.data, (unsigned)coder->Props.size, allocMain));
  state.dic = outBuffer;
  state.dicBufSize = outSize;
  FUNC4(&state);

  for (;;)
  {
    Byte *inBuf = NULL;
    size_t lookahead = (1 << 18);
    if (lookahead > inSize)
      lookahead = (size_t)inSize;
    res = inStream->Look((void *)inStream, (const void **)&inBuf, &lookahead);
    if (res != SZ_OK)
      break;

    {
      SizeT inProcessed = (SizeT)lookahead, dicPos = state.dicPos;
      ELzmaStatus status;
      res = FUNC2(&state, outSize, inBuf, &inProcessed, LZMA_FINISH_END, &status);
      lookahead -= inProcessed;
      inSize -= inProcessed;
      if (res != SZ_OK)
        break;
      if (state.dicPos == state.dicBufSize || (inProcessed == 0 && dicPos == state.dicPos))
      {
        if (state.dicBufSize != outSize || lookahead != 0 ||
            (status != LZMA_STATUS_FINISHED_WITH_MARK &&
             status != LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK))
          res = SZ_ERROR_DATA;
        break;
      }
      res = inStream->Skip((void *)inStream, inProcessed);
      if (res != SZ_OK)
        break;
    }
  }

  FUNC3(&state, allocMain);
  return res;
}