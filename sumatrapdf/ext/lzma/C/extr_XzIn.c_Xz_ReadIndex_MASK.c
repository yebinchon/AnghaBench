#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int UInt64 ;
typedef  int UInt32 ;
struct TYPE_6__ {int /*<<< orphan*/  (* Free ) (TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* Alloc ) (TYPE_1__*,size_t) ;} ;
typedef  scalar_t__ SRes ;
typedef  TYPE_1__ ISzAlloc ;
typedef  int /*<<< orphan*/  ILookInStream ;
typedef  int /*<<< orphan*/  CXzStream ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,scalar_t__) ; 
 scalar_t__ SZ_ERROR_MEM ; 
 scalar_t__ SZ_ERROR_UNSUPPORTED ; 
 scalar_t__ SZ_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static SRes FUNC4(CXzStream *p, ILookInStream *stream, UInt64 indexSize, ISzAlloc *alloc)
{
  SRes res;
  size_t size;
  Byte *buf;
  if (indexSize > ((UInt32)1 << 31))
    return SZ_ERROR_UNSUPPORTED;
  size = (size_t)indexSize;
  if (size != indexSize)
    return SZ_ERROR_UNSUPPORTED;
  buf = alloc->Alloc(alloc, size);
  if (buf == 0)
    return SZ_ERROR_MEM;
  res = FUNC0(stream, buf, size, SZ_ERROR_UNSUPPORTED);
  if (res == SZ_OK)
    res = FUNC1(p, buf, size, alloc);
  alloc->Free(alloc, buf);
  return res;
}