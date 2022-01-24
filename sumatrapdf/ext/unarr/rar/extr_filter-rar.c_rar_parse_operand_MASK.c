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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct MemBitReader {int /*<<< orphan*/  at_eof; } ;

/* Variables and functions */
 int /*<<< orphan*/  RARAbsoluteAddressingMode ; 
 int /*<<< orphan*/  RARImmediateAddressingMode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct MemBitReader*,int) ; 
 scalar_t__ FUNC5 (struct MemBitReader*) ; 

__attribute__((used)) static bool FUNC6(struct MemBitReader *br, uint8_t instruction, bool bytemode, uint32_t instrcount, uint8_t *addressmode, uint32_t *value)
{
    if (FUNC4(br, 1)) {
        *addressmode = FUNC2((uint8_t)FUNC4(br, 3));
        *value = 0;
    }
    else if (FUNC4(br, 1)) {
        if (FUNC4(br, 1)) {
            if (FUNC4(br, 1))
                *addressmode = RARAbsoluteAddressingMode;
            else
                *addressmode = FUNC0((uint8_t)FUNC4(br, 3));
            *value = FUNC5(br);
        }
        else {
            *addressmode = FUNC3((uint8_t)FUNC4(br, 3));
            *value = 0;
        }
    }
    else {
        *addressmode = RARImmediateAddressingMode;
        if (!bytemode)
            *value = FUNC5(br);
        else
            *value = FUNC4(br, 8);
        if (instrcount != (uint32_t)-1 && FUNC1(instruction)) {
            if (*value >= 256) /* absolute address */
                *value -= 256;
            else { /* relative address */
                if (*value >= 136)
                    *value -= 264;
                else if (*value >= 16)
                    *value -= 8;
                else if (*value >= 8)
                    *value -= 16;
                *value += instrcount;
            }
        }
    }
    return !br->at_eof;
}