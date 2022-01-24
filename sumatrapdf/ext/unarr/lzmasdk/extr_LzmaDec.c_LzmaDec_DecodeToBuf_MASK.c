#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ dicPos; scalar_t__ dicBufSize; scalar_t__ dic; } ;
typedef  scalar_t__ SizeT ;
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ELzmaStatus ;
typedef  int /*<<< orphan*/  ELzmaFinishMode ;
typedef  TYPE_1__ CLzmaDec ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int /*<<< orphan*/  LZMA_FINISH_ANY ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__,int /*<<< orphan*/  const*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ SZ_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

SRes FUNC2(CLzmaDec *p, Byte *dest, SizeT *destLen, const Byte *src, SizeT *srcLen, ELzmaFinishMode finishMode, ELzmaStatus *status)
{
  SizeT outSize = *destLen;
  SizeT inSize = *srcLen;
  *srcLen = *destLen = 0;
  for (;;)
  {
    SizeT inSizeCur = inSize, outSizeCur, dicPos;
    ELzmaFinishMode curFinishMode;
    SRes res;
    if (p->dicPos == p->dicBufSize)
      p->dicPos = 0;
    dicPos = p->dicPos;
    if (outSize > p->dicBufSize - dicPos)
    {
      outSizeCur = p->dicBufSize;
      curFinishMode = LZMA_FINISH_ANY;
    }
    else
    {
      outSizeCur = dicPos + outSize;
      curFinishMode = finishMode;
    }

    res = FUNC0(p, outSizeCur, src, &inSizeCur, curFinishMode, status);
    src += inSizeCur;
    inSize -= inSizeCur;
    *srcLen += inSizeCur;
    outSizeCur = p->dicPos - dicPos;
    FUNC1(dest, p->dic + dicPos, outSizeCur);
    dest += outSizeCur;
    outSize -= outSizeCur;
    *destLen += outSizeCur;
    if (res != 0)
      return res;
    if (outSizeCur == 0 || outSize == 0)
      return SZ_OK;
  }
}