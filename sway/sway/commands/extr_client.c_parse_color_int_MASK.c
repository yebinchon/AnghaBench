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
 int FUNC0 (char*) ; 
 int FUNC1 (char*,char**,int) ; 

__attribute__((used)) static bool FUNC2(char *hexstring, uint32_t *dest) {
	if (hexstring[0] != '#') {
		return false;
	}

	if (FUNC0(hexstring) != 7 && FUNC0(hexstring) != 9) {
		return false;
	}

	++hexstring;
	char *end;
	uint32_t decimal = FUNC1(hexstring, &end, 16);

	if (*end != '\0') {
		return false;
	}

	if (FUNC0(hexstring) == 6) {
		// Add alpha
		decimal = (decimal << 8) | 0xff;
	}

	*dest = decimal;
	return true;
}