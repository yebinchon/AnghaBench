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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*,size_t) ; 

int
FUNC3(const uint8_t *link, size_t link_len)
{
	static const size_t valid_uris_count = 6;
	static const char *valid_uris[] = {
		"#", "/", "http://", "https://", "ftp://", "mailto:"
	};

	size_t i;

	for (i = 0; i < valid_uris_count; ++i) {
		size_t len = FUNC1(valid_uris[i]);

		if (link_len > len &&
			FUNC2((char *)link, valid_uris[i], len) == 0 &&
			FUNC0(link[len]))
			return 1;
	}

	return 0;
}