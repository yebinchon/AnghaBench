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
typedef  int /*<<< orphan*/  text ;
typedef  scalar_t__ int64 ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int64
FUNC4(const text *target_size_text)
{
	const char *target_size = FUNC3(target_size_text);
	int64 target_size_bytes = 0;

	if (FUNC2(target_size, "off") == 0 || FUNC2(target_size, "disable") == 0)
		return 0;

	if (FUNC2(target_size, "estimate") == 0)
		target_size_bytes = FUNC0();
	else
		target_size_bytes = FUNC1(target_size);

	/* Disable if target size is zero or less */
	if (target_size_bytes <= 0)
		target_size_bytes = 0;

	return target_size_bytes;
}