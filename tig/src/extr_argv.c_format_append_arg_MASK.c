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
struct format_context {int /*<<< orphan*/  buf; scalar_t__ bufpos; } ;

/* Variables and functions */
 int FUNC0 (char const***,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct format_context*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,char*,int const,char const*) ; 
 int FUNC5 (char const*) ; 
 char* FUNC6 (char const*,char*) ; 

__attribute__((used)) static bool
FUNC7(struct format_context *format, const char ***dst_argv, const char *arg)
{
	FUNC2(format->buf, 0, sizeof(format->buf));
	format->bufpos = 0;

	while (arg) {
		const char *var = FUNC6(arg, "%(");
		const char *closing = var ? FUNC3(var, ')') : NULL;
		const char *next = closing ? closing + 1 : NULL;
		const int len = var ? var - arg : FUNC5(arg);

		if (var && !closing)
			return false;

		if (len && !FUNC4(format->buf, &format->bufpos, "%.*s", len, arg))
			return false;

		if (var && !FUNC1(format, var, next))
			return false;

		arg = next;
	}

	return FUNC0(dst_argv, format->buf);
}