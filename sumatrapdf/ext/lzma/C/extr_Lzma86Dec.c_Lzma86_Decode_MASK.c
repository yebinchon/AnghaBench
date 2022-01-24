#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UInt32 ;
struct TYPE_3__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ SizeT ;
typedef  scalar_t__ SRes ;
typedef  TYPE_1__ ISzAlloc ;
typedef  int /*<<< orphan*/  ELzmaStatus ;
typedef  int Byte ;

/* Variables and functions */
 scalar_t__ LZMA86_HEADER_SIZE ; 
 int /*<<< orphan*/  LZMA_FINISH_ANY ; 
 int /*<<< orphan*/  LZMA_PROPS_SIZE ; 
 scalar_t__ FUNC0 (int*,scalar_t__*,int const*,scalar_t__*,int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ SZ_ERROR_INPUT_EOF ; 
 scalar_t__ SZ_ERROR_UNSUPPORTED ; 
 scalar_t__ SZ_OK ; 
 int /*<<< orphan*/  SzAlloc ; 
 int /*<<< orphan*/  SzFree ; 
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

SRes FUNC3(Byte *dest, SizeT *destLen, const Byte *src, SizeT *srcLen)
{
  ISzAlloc g_Alloc = { SzAlloc, SzFree };
  SRes res;
  int useFilter;
  SizeT inSizePure;
  ELzmaStatus status;

  if (*srcLen < LZMA86_HEADER_SIZE)
    return SZ_ERROR_INPUT_EOF;

  useFilter = src[0];

  if (useFilter > 1)
  {
    *destLen = 0;
    return SZ_ERROR_UNSUPPORTED;
  }

  inSizePure = *srcLen - LZMA86_HEADER_SIZE;
  res = FUNC0(dest, destLen, src + LZMA86_HEADER_SIZE, &inSizePure,
      src + 1, LZMA_PROPS_SIZE, LZMA_FINISH_ANY, &status, &g_Alloc);
  *srcLen = inSizePure + LZMA86_HEADER_SIZE;
  if (res != SZ_OK)
    return res;
  if (useFilter == 1)
  {
    UInt32 x86State;
    FUNC2(x86State);
    FUNC1(dest, *destLen, 0, &x86State, 0);
  }
  return SZ_OK;
}