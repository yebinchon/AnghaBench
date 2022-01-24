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
typedef  int Rune ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,char const*) ; 
 scalar_t__ minify ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(const char *s)
{
	static const char *HEX = "0123456789ABCDEF";
	Rune c;
	FUNC1(minify ? '\'' : '"');
	while (*s) {
		s += FUNC0(&c, s);
		switch (c) {
		case '\'': FUNC2("\\'"); break;
		case '"': FUNC2("\\\""); break;
		case '\\': FUNC2("\\\\"); break;
		case '\b': FUNC2("\\b"); break;
		case '\f': FUNC2("\\f"); break;
		case '\n': FUNC2("\\n"); break;
		case '\r': FUNC2("\\r"); break;
		case '\t': FUNC2("\\t"); break;
		default:
			if (c < ' ' || c > 127) {
				FUNC2("\\u");
				FUNC1(HEX[(c>>12)&15]);
				FUNC1(HEX[(c>>8)&15]);
				FUNC1(HEX[(c>>4)&15]);
				FUNC1(HEX[c&15]);
			} else {
				FUNC1(c); break;
			}
		}
	}
	FUNC1(minify ? '\'' : '"');
}