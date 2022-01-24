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
struct encoding {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CHARSET_SEP ; 
 int /*<<< orphan*/  ENCODING_SEP ; 
 char* ENCODING_UTF8 ; 
 int SIZEOF_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct encoding* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 

struct encoding *
FUNC5(const char *path, struct encoding *default_encoding)
{
	const char *check_attr_argv[] = {
		"git", "check-attr", "encoding", "--", path, NULL
	};
	char buf[SIZEOF_STR];
	char *encoding;

	/* <path>: encoding: <encoding> */

	if (!*path || !FUNC2(check_attr_argv, buf, sizeof(buf), NULL, false)
	    || !(encoding = FUNC4(buf, ENCODING_SEP)))
		return default_encoding;

	encoding += FUNC0(ENCODING_SEP);
	if (!FUNC3(encoding, ENCODING_UTF8)
	    || !FUNC3(encoding, "unspecified")
	    || !FUNC3(encoding, "set")) {
		const char *file_argv[] = {
			"file", "--mime", "--", path, NULL
		};

		if (!*path || !FUNC2(file_argv, buf, sizeof(buf), NULL, false)
		    || !(encoding = FUNC4(buf, CHARSET_SEP)))
			return default_encoding;

		encoding += FUNC0(CHARSET_SEP);
	}

	return FUNC1(encoding);
}