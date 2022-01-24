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
typedef  int /*<<< orphan*/  teststring ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int Length; int MaximumLength; int /*<<< orphan*/  const* Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;

/* Variables and functions */
 int /*<<< orphan*/ * STRINGW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC3(void)
{
#define STRINGW {'S','o','m','e',' ','W','i','l','d',' ','S','t','r','i','n','g',0}
    static const WCHAR teststring[] = STRINGW;
    static const WCHAR originalstring[] = STRINGW;
#undef STRINGW
    UNICODE_STRING uni;

    uni.Length = 0;
    uni.MaximumLength = 0;
    uni.Buffer = (void *)0xdeadbeef;
    FUNC2(&uni, teststring);
    FUNC1(uni.Length == sizeof(teststring) - sizeof(WCHAR), "Length uninitialized\n");
    FUNC1(uni.MaximumLength == sizeof(teststring), "MaximumLength uninitialized\n");
    FUNC1(uni.Buffer == teststring, "Buffer not equal to teststring\n");
    FUNC1(FUNC0(uni.Buffer, originalstring) == 0, "Buffer written to\n");
    FUNC2(&uni, NULL);
    FUNC1(uni.Length == 0, "Length uninitialized\n");
    FUNC1(uni.MaximumLength == 0, "MaximumLength uninitialized\n");
    FUNC1(uni.Buffer == NULL, "Buffer not equal to NULL\n");
/*  pRtlInitUnicodeString(NULL, teststring); */
}