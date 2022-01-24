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
typedef  int /*<<< orphan*/  UINT64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

const char *
FUNC2 (
    const char              *String,
    UINT64                  *NumberPtr)
{
    UINT64                  Number = 0;


    while (FUNC1 ((int) *String))
    {
        FUNC0 (Number, 10, &Number);
        Number += *(String++) - '0';
    }

    *NumberPtr = Number;
    return (String);
}