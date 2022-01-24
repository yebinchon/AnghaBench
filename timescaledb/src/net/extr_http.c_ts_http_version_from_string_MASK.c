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
typedef  int HttpVersion ;

/* Variables and functions */
 int HTTP_VERSION_INVALID ; 
 int /*<<< orphan*/ * http_version_strings ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 

HttpVersion
FUNC1(const char *version)
{
	int i;

	for (i = 0; i < HTTP_VERSION_INVALID; i++)
		if (FUNC0(http_version_strings[i], version) == 0)
			return i;

	return HTTP_VERSION_INVALID;
}