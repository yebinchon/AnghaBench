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
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  DTable ; 
 int /*<<< orphan*/  FSE_ERROR_srcSize_wrong ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HUF_MAX_TABLELOG ; 
 size_t FUNC2 (void*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static size_t FUNC4 (void* dst, size_t maxDstSize, const void* cSrc, size_t cSrcSize)
{
    FUNC1(DTable, HUF_MAX_TABLELOG);
    const BYTE* ip = (const BYTE*) cSrc;
    size_t errorCode;

    errorCode = FUNC3 (DTable, cSrc, cSrcSize);
    if (FUNC0(errorCode)) return errorCode;
    if (errorCode >= cSrcSize) return (size_t)-FSE_ERROR_srcSize_wrong;
    ip += errorCode;
    cSrcSize -= errorCode;

    return FUNC2 (dst, maxDstSize, ip, cSrcSize, DTable);
}