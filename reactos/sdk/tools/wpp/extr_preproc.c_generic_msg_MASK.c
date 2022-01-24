#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_2__ {char* input; int line_number; int char_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 TYPE_1__ pp_status ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *s, const char *t, const char *n, va_list ap)
{
	FUNC0(stderr, "%s:%d:%d: %s: ", pp_status.input ? pp_status.input : "stdin",
                pp_status.line_number, pp_status.char_number, t);
	FUNC4(stderr, s, ap);
#ifdef WANT_NEAR_INDICATION
	{
		char *cpy, *p;
		if(n)
		{
			cpy = pp_xstrdup(n);
			if(!cpy)
				goto end;
			for (p = cpy; *p; p++) if(!isprint(*p)) *p = ' ';
			fprintf(stderr, " near '%s'", cpy);
			free(cpy);
		}
	}
end:
#endif
	FUNC0(stderr, "\n");
}