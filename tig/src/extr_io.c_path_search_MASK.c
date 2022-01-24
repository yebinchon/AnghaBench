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
 int SIZEOF_STR ; 
 char* _PATH_DEFPATH ; 
 scalar_t__ FUNC0 (char const*,int) ; 
 scalar_t__ FUNC1 (char const*,char) ; 
 size_t FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

bool
FUNC7(char *dst, size_t dstlen, const char *query, const char *colon_path, int access_flags)
{
	const char *_colon_path = _PATH_DEFPATH; /* emulate execlp() */
	char test[SIZEOF_STR];
	char elt[SIZEOF_STR];
	size_t elt_len;

	if (!query || !*query)
		return false;

	if (FUNC1(query, '/')) {
		if (FUNC0(query, access_flags))
			return false;
		FUNC5(dst, dstlen, query, FUNC6(query));
		return true;
	}

	if (colon_path && *colon_path)
		_colon_path = colon_path;

	while (_colon_path && *_colon_path) {
		elt_len = FUNC2(_colon_path, ":");
		if (elt_len)
			FUNC4(elt, _colon_path, elt_len);
		else
			FUNC4(elt, ".", 1);

		_colon_path += elt_len;
		if (*_colon_path)
			_colon_path += 1;

		FUNC3(test, "%s/%s", elt, query);
		if (!FUNC0(test, access_flags)) {
			FUNC5(dst, dstlen, test, FUNC6(test));
			return true;
		}
	}
	return false;
}