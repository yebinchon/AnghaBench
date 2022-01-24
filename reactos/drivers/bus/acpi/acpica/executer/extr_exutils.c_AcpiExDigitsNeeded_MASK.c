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
typedef  scalar_t__ UINT64 ;
typedef  int UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ExDigitsNeeded ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static UINT32
FUNC3 (
    UINT64                  Value,
    UINT32                  Base)
{
    UINT32                  NumDigits;
    UINT64                  CurrentValue;


    FUNC0 (ExDigitsNeeded);


    /* UINT64 is unsigned, so we don't worry about a '-' prefix */

    if (Value == 0)
    {
        FUNC2 (1);
    }

    CurrentValue = Value;
    NumDigits = 0;

    /* Count the digits in the requested base */

    while (CurrentValue)
    {
        (void) FUNC1 (CurrentValue, Base, &CurrentValue, NULL);
        NumDigits++;
    }

    FUNC2 (NumDigits);
}