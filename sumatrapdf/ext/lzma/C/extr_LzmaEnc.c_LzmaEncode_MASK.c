#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SizeT ;
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  int /*<<< orphan*/  ICompressProgress ;
typedef  int /*<<< orphan*/  CLzmaEncProps ;
typedef  int /*<<< orphan*/  CLzmaEnc ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ SZ_ERROR_MEM ; 
 scalar_t__ SZ_OK ; 

SRes FUNC5(Byte *dest, SizeT *destLen, const Byte *src, SizeT srcLen,
    const CLzmaEncProps *props, Byte *propsEncoded, SizeT *propsSize, int writeEndMark,
    ICompressProgress *progress, ISzAlloc *alloc, ISzAlloc *allocBig)
{
  CLzmaEnc *p = (CLzmaEnc *)FUNC0(alloc);
  SRes res;
  if (p == 0)
    return SZ_ERROR_MEM;

  res = FUNC3(p, props);
  if (res == SZ_OK)
  {
    res = FUNC4(p, propsEncoded, propsSize);
    if (res == SZ_OK)
      res = FUNC2(p, dest, destLen, src, srcLen,
          writeEndMark, progress, alloc, allocBig);
  }

  FUNC1(p, alloc, allocBig);
  return res;
}