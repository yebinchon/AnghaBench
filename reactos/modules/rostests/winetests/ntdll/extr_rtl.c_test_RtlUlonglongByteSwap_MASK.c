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
typedef  int ULONGLONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{
    ULONGLONG result;

    if ( !&pRtlUlonglongByteSwap )
    {
        FUNC2("RtlUlonglongByteSwap is not available\n");
        return;
    }

    if ( FUNC1( 0 ) != 0 )
    {
        FUNC2("Broken RtlUlonglongByteSwap in win2k\n");
        return;
    }

    result = FUNC1( ((ULONGLONG)0x76543210 << 32) | 0x87654321 );
    FUNC0( (((ULONGLONG)0x21436587 << 32) | 0x10325476) == result,
       "RtlUlonglongByteSwap(0x7654321087654321) returns 0x%s, expected 0x2143658710325476\n",
       FUNC3(result));
}