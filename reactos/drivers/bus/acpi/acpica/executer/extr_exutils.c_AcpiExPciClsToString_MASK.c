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
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char FUNC1 (int /*<<< orphan*/ ,int) ; 

void
FUNC2 (
    char                    *OutString,
    UINT8                   ClassCode[3])
{

    FUNC0 ();


    /* All 3 bytes are hexadecimal */

    OutString[0] = FUNC1 ((UINT64) ClassCode[0], 4);
    OutString[1] = FUNC1 ((UINT64) ClassCode[0], 0);
    OutString[2] = FUNC1 ((UINT64) ClassCode[1], 4);
    OutString[3] = FUNC1 ((UINT64) ClassCode[1], 0);
    OutString[4] = FUNC1 ((UINT64) ClassCode[2], 4);
    OutString[5] = FUNC1 ((UINT64) ClassCode[2], 0);
    OutString[6] = 0;
}