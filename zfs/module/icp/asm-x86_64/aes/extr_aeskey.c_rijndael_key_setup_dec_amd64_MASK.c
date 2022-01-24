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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *) ; 

int
FUNC3(uint32_t rk[], const uint32_t cipherKey[],
    int keyBits)
{
	switch (keyBits) {
	case 128:
		FUNC0((unsigned char *)&cipherKey[0], rk);
		return (10);
	case 192:
		FUNC1((unsigned char *)&cipherKey[0], rk);
		return (12);
	case 256:
		FUNC2((unsigned char *)&cipherKey[0], rk);
		return (14);
	default: /* should never get here */
		break;
	}

	return (0);
}