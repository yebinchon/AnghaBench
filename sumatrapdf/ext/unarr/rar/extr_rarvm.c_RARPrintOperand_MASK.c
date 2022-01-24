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
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int RARAbsoluteAddressingMode ; 
 int RARImmediateAddressingMode ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 

__attribute__((used)) static void FUNC4(uint8_t addressingmode, uint32_t value)
{
    if (FUNC1(0) <= addressingmode && addressingmode <= FUNC1(7))
        FUNC3("r%d", addressingmode % 8);
    else if (FUNC2(0) <= addressingmode && addressingmode <= FUNC2(7))
        FUNC3("@(r%d)", addressingmode % 8);
    else if (FUNC0(0) <= addressingmode && addressingmode <= FUNC0(7))
        FUNC3("@(r%d+$%02x)", addressingmode % 8, value);
    else if (addressingmode == RARAbsoluteAddressingMode)
        FUNC3("@($%02x)", value);
    else if (addressingmode == RARImmediateAddressingMode)
        FUNC3("$%02x", value);
}