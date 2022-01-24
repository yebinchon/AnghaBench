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
typedef  int WCHAR ;
struct TYPE_4__ {int* Buffer; int Length; int MaximumLength; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int,int) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{
    WCHAR ch1, ch2;
    UNICODE_STRING str1, str2;

    str1.Buffer = &ch1;
    str1.Length = str1.MaximumLength = sizeof(WCHAR);
    str2.Buffer = &ch2;
    str2.Length = str2.MaximumLength = sizeof(WCHAR);
    for (ch1 = 0; ch1 < 512; ch1++)
    {
        for (ch2 = 0; ch2 < 1024; ch2++)
        {
            LONG res = FUNC1( &str1, &str2, FALSE );
            FUNC0( res == (ch1 - ch2), "wrong result %d %04x %04x\n", res, ch1, ch2 );
            res = FUNC1( &str1, &str2, TRUE );
            FUNC0( res == (FUNC3(ch1) - FUNC3(ch2)),
                "wrong result %d %04x %04x\n", res, ch1, ch2 );
            if (&pRtlCompareUnicodeStrings)
            {
                res = FUNC2( &ch1, 1, &ch2, 1, FALSE );
                FUNC0( res == (ch1 - ch2), "wrong result %d %04x %04x\n", res, ch1, ch2 );
                res = FUNC2( &ch1, 1, &ch2, 1, TRUE );
                FUNC0( res == (FUNC3(ch1) - FUNC3(ch2)),
                    "wrong result %d %04x %04x\n", res, ch1, ch2 );
            }
        }
    }
}