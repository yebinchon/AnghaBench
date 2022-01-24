#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * we_wordv; } ;
typedef  TYPE_1__ wordexp_t ;

/* Variables and functions */
 int SIZEOF_STR ; 
 int /*<<< orphan*/  WRDE_NOCMD ; 
 char* FUNC0 (char*) ; 
 size_t FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

bool
FUNC8(char *dst, size_t dstlen, const char *src)
{
	if (!src)
		return false;

	if (src[0] == '~') {
		/* constrain wordexp to tilde expansion only */
		const char *ifs = FUNC0("IFS") ? FUNC0("IFS") : " \t\n";
		wordexp_t we_result;
		size_t metachar_pos;
		char metachars[SIZEOF_STR];
		char leading[SIZEOF_STR];

		FUNC2(metachars, "%s%s", "/$|&;<>(){}`", ifs);
		metachar_pos = FUNC1(src, metachars);
		if (src[metachar_pos] == '/' || src[metachar_pos] == 0) {
			FUNC4(leading, metachar_pos + 1, NULL, "%s", src);
			if (FUNC6(leading, &we_result, WRDE_NOCMD))
				return false;
			FUNC4(dst, dstlen, NULL, "%s%s", we_result.we_wordv[0], src + metachar_pos);
			FUNC7(&we_result);
			return true;
		}
	}

	/* else */
	FUNC3(dst, dstlen, src, FUNC5(src));
	return true;
}