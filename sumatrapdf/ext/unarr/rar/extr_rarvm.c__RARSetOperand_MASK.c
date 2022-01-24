#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int* registers; } ;
typedef  TYPE_1__ RARVirtualMachine ;

/* Variables and functions */
 int RARAbsoluteAddressingMode ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC5(RARVirtualMachine *vm, uint8_t addressingmode, uint32_t value, bool bytemode, uint32_t data)
{
    if (FUNC1(0) <= addressingmode && addressingmode <= FUNC1(7)) {
        if (bytemode)
            data = data & 0xFF;
        vm->registers[addressingmode % 8] = data;
    }
    else if (FUNC2(0) <= addressingmode && addressingmode <= FUNC2(7)) {
        if (bytemode)
            FUNC4(vm, vm->registers[addressingmode % 8], (uint8_t)data);
        else
            FUNC3(vm, vm->registers[addressingmode % 8], data);
    }
    else if (FUNC0(0) <= addressingmode && addressingmode <= FUNC0(7)) {
        if (bytemode)
            FUNC4(vm, value + vm->registers[addressingmode % 8], (uint8_t)data);
        else
            FUNC3(vm, value + vm->registers[addressingmode % 8], data);
    }
    else if (addressingmode == RARAbsoluteAddressingMode) {
        if (bytemode)
            FUNC4(vm, value, (uint8_t)data);
        else
            FUNC3(vm, value, data);
    }
}