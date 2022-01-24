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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int MAX_DIMENSION_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/ * len ; 

__attribute__((used)) static uint32_t FUNC3(const uint8_t *buf, size_t buflen,
                               size_t *numlen)
{
	char num[MAX_DIMENSION_LEN + 1];
	size_t i;

	FUNC0(buf != NULL);
	FUNC0(len != NULL);
	for (i = 0; i < buflen && buf[i] != ',' && buf[i] != '\0'; ++i) {
		if (!FUNC2(buf[i]) || i > MAX_DIMENSION_LEN) return 0;
		num[i] = buf[i];
	}
	num[i] = '\0';
	*numlen = i;

	return (uint32_t)FUNC1(num);
}