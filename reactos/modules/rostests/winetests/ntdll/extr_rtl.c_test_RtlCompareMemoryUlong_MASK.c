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
typedef  int ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int*,int) ; 
 int FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    ULONG a[10];
    ULONG result;

    if (!&pRtlCompareMemoryUlong)
    {
        FUNC2("RtlCompareMemoryUlong is not available\n");
        return;
    }

    a[0]= 0x0123;
    a[1]= 0x4567;
    a[2]= 0x89ab;
    a[3]= 0xcdef;
    result = FUNC1(a, 0, 0x0123);
    FUNC0(result == 0, "RtlCompareMemoryUlong(%p, 0, 0x0123) returns %u, expected 0\n", a, result);
    result = FUNC1(a, 3, 0x0123);
    FUNC0(result == 0, "RtlCompareMemoryUlong(%p, 3, 0x0123) returns %u, expected 0\n", a, result);
    result = FUNC1(a, 4, 0x0123);
    FUNC0(result == 4, "RtlCompareMemoryUlong(%p, 4, 0x0123) returns %u, expected 4\n", a, result);
    result = FUNC1(a, 5, 0x0123);
    FUNC0(result == 4, "RtlCompareMemoryUlong(%p, 5, 0x0123) returns %u, expected 4\n", a, result);
    result = FUNC1(a, 7, 0x0123);
    FUNC0(result == 4, "RtlCompareMemoryUlong(%p, 7, 0x0123) returns %u, expected 4\n", a, result);
    result = FUNC1(a, 8, 0x0123);
    FUNC0(result == 4, "RtlCompareMemoryUlong(%p, 8, 0x0123) returns %u, expected 4\n", a, result);
    result = FUNC1(a, 9, 0x0123);
    FUNC0(result == 4, "RtlCompareMemoryUlong(%p, 9, 0x0123) returns %u, expected 4\n", a, result);
    result = FUNC1(a, 4, 0x0127);
    FUNC0(result == 0, "RtlCompareMemoryUlong(%p, 4, 0x0127) returns %u, expected 0\n", a, result);
    result = FUNC1(a, 4, 0x7123);
    FUNC0(result == 0, "RtlCompareMemoryUlong(%p, 4, 0x7123) returns %u, expected 0\n", a, result);
    result = FUNC1(a, 16, 0x4567);
    FUNC0(result == 0, "RtlCompareMemoryUlong(%p, 16, 0x4567) returns %u, expected 0\n", a, result);

    a[1]= 0x0123;
    result = FUNC1(a, 3, 0x0123);
    FUNC0(result == 0, "RtlCompareMemoryUlong(%p, 3, 0x0123) returns %u, expected 0\n", a, result);
    result = FUNC1(a, 4, 0x0123);
    FUNC0(result == 4, "RtlCompareMemoryUlong(%p, 4, 0x0123) returns %u, expected 4\n", a, result);
    result = FUNC1(a, 5, 0x0123);
    FUNC0(result == 4, "RtlCompareMemoryUlong(%p, 5, 0x0123) returns %u, expected 4\n", a, result);
    result = FUNC1(a, 7, 0x0123);
    FUNC0(result == 4, "RtlCompareMemoryUlong(%p, 7, 0x0123) returns %u, expected 4\n", a, result);
    result = FUNC1(a, 8, 0x0123);
    FUNC0(result == 8, "RtlCompareMemoryUlong(%p, 8, 0x0123) returns %u, expected 8\n", a, result);
    result = FUNC1(a, 9, 0x0123);
    FUNC0(result == 8, "RtlCompareMemoryUlong(%p, 9, 0x0123) returns %u, expected 8\n", a, result);
}