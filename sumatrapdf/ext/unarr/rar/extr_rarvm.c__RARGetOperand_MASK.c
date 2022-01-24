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
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static uint32_t FUNC5(RARVirtualMachine *vm, uint8_t addressingmode, uint32_t value, bool bytemode)
{
    if (FUNC1(0) <= addressingmode && addressingmode <= FUNC1(7)) {
        uint32_t result = vm->registers[addressingmode % 8];
        if (bytemode)
            result = result & 0xFF;
        return result;
    }
    if (FUNC2(0) <= addressingmode && addressingmode <= FUNC2(7)) {
        if (bytemode)
            return FUNC4(vm, vm->registers[addressingmode % 8]);
        return FUNC3(vm, vm->registers[addressingmode % 8]);
    }
    if (FUNC0(0) <= addressingmode && addressingmode <= FUNC0(7)) {
        if (bytemode)
            return FUNC4(vm, value + vm->registers[addressingmode % 8]);
        return FUNC3(vm, value + vm->registers[addressingmode % 8]);
    }
    if (addressingmode == RARAbsoluteAddressingMode) {
        if (bytemode)
            return FUNC4(vm, value);
        return FUNC3(vm, value);
    }
    /* if (addressingmode == RARImmediateAddressingMode) */
    return value;
}