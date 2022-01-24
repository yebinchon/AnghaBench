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
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int SIZEOF_STR ; 
 int SUCCESS ; 
 struct encoding* FUNC0 (char*) ; 
 int FUNC1 (char*,char const*,int) ; 

__attribute__((used)) static enum status_code
FUNC2(struct encoding **encoding_ref, const char *arg, bool priority)
{
	char buf[SIZEOF_STR];
	enum status_code code = FUNC1(buf, arg, sizeof(buf));

	if (code == SUCCESS) {
		struct encoding *encoding = *encoding_ref;

		if (encoding && !priority)
			return code;
		encoding = FUNC0(buf);
		if (encoding)
			*encoding_ref = encoding;
	}

	return code;
}