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
typedef  float WCHAR ;
struct TYPE_3__ {float* Buffer; int Length; int MaximumLength; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int BYTE ;

/* Variables and functions */
 int STATUS_SUCCESS ; 
 int STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (TYPE_1__*,int*) ; 

__attribute__((used)) static void FUNC4(void)
{
    int r;
    UNICODE_STRING str;
    BYTE output[0x10];
    BYTE expected[0x10] = { 0x24, 0x0a, 0xf0, 0x9d, 0x84, 0x1c, 0xda, 0xcf, 
                            0x56, 0xeb, 0x6b, 0x96, 0x55, 0xec, 0xcf, 0x0a };
    WCHAR szFoo[] = {'f','o','o',0 };

    if (0)
    {
    /* crashes on Windows */
    r = FUNC3(NULL, NULL);
    FUNC2( r == STATUS_UNSUCCESSFUL, "wrong error code\n");
    }

    str.Buffer = szFoo;
    str.Length = 4*sizeof(WCHAR);
    str.MaximumLength = str.Length;

    FUNC1(output, 0, sizeof output);
    r = FUNC3(&str, output);
    FUNC2( r == STATUS_SUCCESS, "wrong error code\n");

    FUNC2(!FUNC0(output, expected, sizeof expected), "response wrong\n");
}