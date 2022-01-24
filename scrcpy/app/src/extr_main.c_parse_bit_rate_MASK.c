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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 long FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(char *optarg, uint32_t *bit_rate) {
    char *endptr;
    if (*optarg == '\0') {
        FUNC0("Bit-rate parameter is empty");
        return false;
    }
    long value = FUNC1(optarg, &endptr, 0);
    int mul = 1;
    if (*endptr != '\0') {
        if (optarg == endptr) {
            FUNC0("Invalid bit-rate: %s", optarg);
            return false;
        }
        if ((*endptr == 'M' || *endptr == 'm') && endptr[1] == '\0') {
            mul = 1000000;
        } else if ((*endptr == 'K' || *endptr == 'k') && endptr[1] == '\0') {
            mul = 1000;
        } else {
            FUNC0("Invalid bit-rate unit: %s", optarg);
            return false;
        }
    }
    if (value < 0 || ((uint32_t) -1) / mul < value) {
        FUNC0("Bitrate must be positive and less than 2^32: %s", optarg);
        return false;
    }

    *bit_rate = (uint32_t) value * mul;
    return true;
}