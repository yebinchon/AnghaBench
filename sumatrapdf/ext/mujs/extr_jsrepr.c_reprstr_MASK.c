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
typedef  int /*<<< orphan*/  js_State ;
typedef  int /*<<< orphan*/  js_Buffer ;
typedef  int Rune ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void FUNC3(js_State *J, js_Buffer **sb, const char *s)
{
	static const char *HEX = "0123456789ABCDEF";
	Rune c;
	FUNC1(J, sb, '"');
	while (*s) {
		s += FUNC0(&c, s);
		switch (c) {
		case '"': FUNC2(J, sb, "\\\""); break;
		case '\\': FUNC2(J, sb, "\\\\"); break;
		case '\b': FUNC2(J, sb, "\\b"); break;
		case '\f': FUNC2(J, sb, "\\f"); break;
		case '\n': FUNC2(J, sb, "\\n"); break;
		case '\r': FUNC2(J, sb, "\\r"); break;
		case '\t': FUNC2(J, sb, "\\t"); break;
		default:
			if (c < ' ' || c > 127) {
				FUNC2(J, sb, "\\u");
				FUNC1(J, sb, HEX[(c>>12)&15]);
				FUNC1(J, sb, HEX[(c>>8)&15]);
				FUNC1(J, sb, HEX[(c>>4)&15]);
				FUNC1(J, sb, HEX[c&15]);
			} else {
				FUNC1(J, sb, c); break;
			}
		}
	}
	FUNC1(J, sb, '"');
}