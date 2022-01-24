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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,char*,size_t) ; 
 size_t FUNC1 (char*) ; 

__attribute__((used)) static size_t
FUNC2(const uint8_t *text, size_t size)
{
	static char* single_quote_list[] = { "'", "&#39;", "&#x27;", "&apos;", NULL };
	char** p;

	for (p = single_quote_list; *p; ++p) {
		size_t len = FUNC1(*p);
		if (size >= len && FUNC0(text, *p, len) == 0) {
			return len;
		}
	}

	return 0;
}