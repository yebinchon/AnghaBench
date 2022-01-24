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

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 size_t FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static char* FUNC4(const char* url)
{
	static char short_name[128];
	char *p;
	size_t i, len = FUNC0(url);
	if (len < 5)
		return NULL;

	for (i = len - 2; i > 0; i--) {
		if (url[i] == '/') {
			i++;
			break;
		}
	}
	FUNC1(short_name, &url[i]);
	// If the URL is followed by a query, remove that part
	// Make sure we detect escaped queries too
	p = FUNC3(short_name, "%3F");
	if (p != NULL)
		*p = 0;
	p = FUNC3(short_name, "%3f");
	if (p != NULL)
		*p = 0;
	for (i = 0; i < FUNC2(short_name); i++) {
		if ((short_name[i] == '?') || (short_name[i] == '#')) {
			short_name[i] = 0;
			break;
		}
	}
	return short_name;
}