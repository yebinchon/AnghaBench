#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UInt32 ;
struct TYPE_10__ {scalar_t__ dicPos; } ;
struct TYPE_9__ {scalar_t__ state; scalar_t__ unpackSize; scalar_t__ control; scalar_t__ packSize; TYPE_2__ decoder; void* needInitState; void* needInitDic; void* needInitProp; } ;
typedef  scalar_t__ SizeT ;
typedef  int /*<<< orphan*/  SRes ;
typedef  scalar_t__ ELzmaStatus ;
typedef  scalar_t__ ELzmaFinishMode ;
typedef  TYPE_1__ CLzma2Dec ;
typedef  int /*<<< orphan*/  Byte ;
typedef  void* Bool ;

/* Variables and functions */
 void* False ; 
 scalar_t__ LZMA2_CONTROL_COPY_RESET_DIC ; 
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ LZMA2_STATE_CONTROL ; 
 scalar_t__ LZMA2_STATE_DATA ; 
 scalar_t__ LZMA2_STATE_DATA_CONT ; 
 scalar_t__ LZMA2_STATE_ERROR ; 
 scalar_t__ LZMA2_STATE_FINISHED ; 
 scalar_t__ LZMA_FINISH_ANY ; 
 scalar_t__ LZMA_FINISH_END ; 
 scalar_t__ LZMA_STATUS_FINISHED_WITH_MARK ; 
 scalar_t__ LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK ; 
 scalar_t__ LZMA_STATUS_NEEDS_MORE_INPUT ; 
 scalar_t__ LZMA_STATUS_NOT_FINISHED ; 
 scalar_t__ LZMA_STATUS_NOT_SPECIFIED ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,int /*<<< orphan*/  const*,scalar_t__*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_DATA ; 
 int /*<<< orphan*/  SZ_OK ; 
 void* True ; 

SRes FUNC7(CLzma2Dec *p, SizeT dicLimit,
    const Byte *src, SizeT *srcLen, ELzmaFinishMode finishMode, ELzmaStatus *status)
{
  SizeT inSize = *srcLen;
  *srcLen = 0;
  *status = LZMA_STATUS_NOT_SPECIFIED;

  while (p->state != LZMA2_STATE_FINISHED)
  {
    SizeT dicPos = p->decoder.dicPos;
    if (p->state == LZMA2_STATE_ERROR)
      return SZ_ERROR_DATA;
    if (dicPos == dicLimit && finishMode == LZMA_FINISH_ANY)
    {
      *status = LZMA_STATUS_NOT_FINISHED;
      return SZ_OK;
    }
    if (p->state != LZMA2_STATE_DATA && p->state != LZMA2_STATE_DATA_CONT)
    {
      if (*srcLen == inSize)
      {
        *status = LZMA_STATUS_NEEDS_MORE_INPUT;
        return SZ_OK;
      }
      (*srcLen)++;
      p->state = FUNC2(p, *src++);
      continue;
    }
    {
      SizeT destSizeCur = dicLimit - dicPos;
      SizeT srcSizeCur = inSize - *srcLen;
      ELzmaFinishMode curFinishMode = LZMA_FINISH_ANY;
      
      if (p->unpackSize <= destSizeCur)
      {
        destSizeCur = (SizeT)p->unpackSize;
        curFinishMode = LZMA_FINISH_END;
      }

      if (FUNC1(p))
      {
        if (*srcLen == inSize)
        {
          *status = LZMA_STATUS_NEEDS_MORE_INPUT;
          return SZ_OK;
        }

        if (p->state == LZMA2_STATE_DATA)
        {
          Bool initDic = (p->control == LZMA2_CONTROL_COPY_RESET_DIC);
          if (initDic)
            p->needInitProp = p->needInitState = True;
          else if (p->needInitDic)
            return SZ_ERROR_DATA;
          p->needInitDic = False;
          FUNC4(&p->decoder, initDic, False);
        }

        if (srcSizeCur > destSizeCur)
          srcSizeCur = destSizeCur;

        if (srcSizeCur == 0)
          return SZ_ERROR_DATA;

        FUNC5(&p->decoder, src, srcSizeCur);

        src += srcSizeCur;
        *srcLen += srcSizeCur;
        p->unpackSize -= (UInt32)srcSizeCur;
        p->state = (p->unpackSize == 0) ? LZMA2_STATE_CONTROL : LZMA2_STATE_DATA_CONT;
      }
      else
      {
        SizeT outSizeProcessed;
        SRes res;

        if (p->state == LZMA2_STATE_DATA)
        {
          int mode = FUNC0(p);
          Bool initDic = (mode == 3);
          Bool initState = (mode > 0);
          if ((!initDic && p->needInitDic) || (!initState && p->needInitState))
            return SZ_ERROR_DATA;
          
          FUNC4(&p->decoder, initDic, initState);
          p->needInitDic = False;
          p->needInitState = False;
          p->state = LZMA2_STATE_DATA_CONT;
        }
        if (srcSizeCur > p->packSize)
          srcSizeCur = (SizeT)p->packSize;
          
        res = FUNC3(&p->decoder, dicPos + destSizeCur, src, &srcSizeCur, curFinishMode, status);
        
        src += srcSizeCur;
        *srcLen += srcSizeCur;
        p->packSize -= (UInt32)srcSizeCur;

        outSizeProcessed = p->decoder.dicPos - dicPos;
        p->unpackSize -= (UInt32)outSizeProcessed;

        FUNC6(res);
        if (*status == LZMA_STATUS_NEEDS_MORE_INPUT)
          return res;

        if (srcSizeCur == 0 && outSizeProcessed == 0)
        {
          if (*status != LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK ||
              p->unpackSize != 0 || p->packSize != 0)
            return SZ_ERROR_DATA;
          p->state = LZMA2_STATE_CONTROL;
        }
        if (*status == LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK)
          *status = LZMA_STATUS_NOT_FINISHED;
      }
    }
  }
  *status = LZMA_STATUS_FINISHED_WITH_MARK;
  return SZ_OK;
}