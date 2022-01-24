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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * data ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void) {
        uint8_t scratch[16];

        FUNC0(FUNC2(&data[0]) == 0x0001);
        FUNC0(FUNC2(&data[1]) == 0x0102);

        FUNC0(FUNC3(&data[0]) == 0x00010203);
        FUNC0(FUNC3(&data[1]) == 0x01020304);
        FUNC0(FUNC3(&data[2]) == 0x02030405);
        FUNC0(FUNC3(&data[3]) == 0x03040506);

        FUNC0(FUNC4(&data[0]) == 0x0001020304050607);
        FUNC0(FUNC4(&data[1]) == 0x0102030405060708);
        FUNC0(FUNC4(&data[2]) == 0x0203040506070809);
        FUNC0(FUNC4(&data[3]) == 0x030405060708090a);
        FUNC0(FUNC4(&data[4]) == 0x0405060708090a0b);
        FUNC0(FUNC4(&data[5]) == 0x05060708090a0b0c);
        FUNC0(FUNC4(&data[6]) == 0x060708090a0b0c0d);
        FUNC0(FUNC4(&data[7]) == 0x0708090a0b0c0d0e);

        FUNC8(scratch);
        FUNC5(&scratch[0], 0x0001);
        FUNC0(FUNC1(&scratch[0], &data[0], sizeof(uint16_t)) == 0);
        FUNC8(scratch);
        FUNC5(&scratch[1], 0x0102);
        FUNC0(FUNC1(&scratch[1], &data[1], sizeof(uint16_t)) == 0);

        FUNC8(scratch);
        FUNC6(&scratch[0], 0x00010203);
        FUNC0(FUNC1(&scratch[0], &data[0], sizeof(uint32_t)) == 0);
        FUNC8(scratch);
        FUNC6(&scratch[1], 0x01020304);
        FUNC0(FUNC1(&scratch[1], &data[1], sizeof(uint32_t)) == 0);
        FUNC8(scratch);
        FUNC6(&scratch[2], 0x02030405);
        FUNC0(FUNC1(&scratch[2], &data[2], sizeof(uint32_t)) == 0);
        FUNC8(scratch);
        FUNC6(&scratch[3], 0x03040506);
        FUNC0(FUNC1(&scratch[3], &data[3], sizeof(uint32_t)) == 0);

        FUNC8(scratch);
        FUNC7(&scratch[0], 0x0001020304050607);
        FUNC0(FUNC1(&scratch[0], &data[0], sizeof(uint64_t)) == 0);
        FUNC8(scratch);
        FUNC7(&scratch[1], 0x0102030405060708);
        FUNC0(FUNC1(&scratch[1], &data[1], sizeof(uint64_t)) == 0);
        FUNC8(scratch);
        FUNC7(&scratch[2], 0x0203040506070809);
        FUNC0(FUNC1(&scratch[2], &data[2], sizeof(uint64_t)) == 0);
        FUNC8(scratch);
        FUNC7(&scratch[3], 0x030405060708090a);
        FUNC0(FUNC1(&scratch[3], &data[3], sizeof(uint64_t)) == 0);
        FUNC8(scratch);
        FUNC7(&scratch[4], 0x0405060708090a0b);
        FUNC0(FUNC1(&scratch[4], &data[4], sizeof(uint64_t)) == 0);
        FUNC8(scratch);
        FUNC7(&scratch[5], 0x05060708090a0b0c);
        FUNC0(FUNC1(&scratch[5], &data[5], sizeof(uint64_t)) == 0);
        FUNC8(scratch);
        FUNC7(&scratch[6], 0x060708090a0b0c0d);
        FUNC0(FUNC1(&scratch[6], &data[6], sizeof(uint64_t)) == 0);
        FUNC8(scratch);
        FUNC7(&scratch[7], 0x0708090a0b0c0d0e);
        FUNC0(FUNC1(&scratch[7], &data[7], sizeof(uint64_t)) == 0);
}