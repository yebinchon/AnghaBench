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
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int,int const*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(int argc, char *argv[]) {
        const uint8_t in[15]  = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
                                  0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e };
        const uint8_t key[16] = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
                                  0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f};
        uint8_t in_buf[20];

        /* Test with same input but different alignments. */
        FUNC1(in_buf, in, sizeof(in));
        FUNC0(in_buf, sizeof(in), key);
        FUNC1(in_buf + 1, in, sizeof(in));
        FUNC0(in_buf + 1, sizeof(in), key);
        FUNC1(in_buf + 2, in, sizeof(in));
        FUNC0(in_buf + 2, sizeof(in), key);
        FUNC1(in_buf + 4, in, sizeof(in));
        FUNC0(in_buf + 4, sizeof(in), key);

        FUNC2();
}