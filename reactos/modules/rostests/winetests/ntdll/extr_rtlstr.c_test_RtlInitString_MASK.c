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
struct TYPE_3__ {int Length; int MaximumLength; char const* Buffer; } ;
typedef  TYPE_1__ STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    static const char teststring[] = "Some Wild String";
    STRING str;

    str.Length = 0;
    str.MaximumLength = 0;
    str.Buffer = (void *)0xdeadbeef;
    FUNC1(&str, teststring);
    FUNC0(str.Length == sizeof(teststring) - sizeof(char), "Length uninitialized\n");
    FUNC0(str.MaximumLength == sizeof(teststring), "MaximumLength uninitialized\n");
    FUNC0(str.Buffer == teststring, "Buffer not equal to teststring\n");
    FUNC0(FUNC2(str.Buffer, "Some Wild String") == 0, "Buffer written to\n");
    FUNC1(&str, NULL);
    FUNC0(str.Length == 0, "Length uninitialized\n");
    FUNC0(str.MaximumLength == 0, "MaximumLength uninitialized\n");
    FUNC0(str.Buffer == NULL, "Buffer not equal to NULL\n");
/*  pRtlInitString(NULL, teststring); */
}