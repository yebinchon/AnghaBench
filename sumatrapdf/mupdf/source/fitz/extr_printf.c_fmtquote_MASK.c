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
struct fmtbuf {int dummy; } ;
typedef  size_t c ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fmtbuf*,int) ; 

__attribute__((used)) static void FUNC1(struct fmtbuf *out, const char *s, int sq, int eq)
{
	int c;
	FUNC0(out, sq);
	while ((c = *s++) != 0) {
		switch (c) {
		default:
			if (c < 32 || c > 127) {
				FUNC0(out, '\\');
				if (sq == '(')
				{
					FUNC0(out, '0' + ((c >> 6) & 7));
					FUNC0(out, '0' + ((c >> 3) & 7));
					FUNC0(out, '0' + ((c) & 7));
				}
				else
				{
					FUNC0(out, 'x');
					FUNC0(out, "0123456789ABCDEF"[(c>>4)&15]);
					FUNC0(out, "0123456789ABCDEF"[(c)&15]);
				}
			} else {
				if (c == sq || c == eq)
					FUNC0(out, '\\');
				FUNC0(out, c);
			}
			break;
		case '\\': FUNC0(out, '\\'); FUNC0(out, '\\'); break;
		case '\b': FUNC0(out, '\\'); FUNC0(out, 'b'); break;
		case '\f': FUNC0(out, '\\'); FUNC0(out, 'f'); break;
		case '\n': FUNC0(out, '\\'); FUNC0(out, 'n'); break;
		case '\r': FUNC0(out, '\\'); FUNC0(out, 'r'); break;
		case '\t': FUNC0(out, '\\'); FUNC0(out, 't'); break;
		}
	}
	FUNC0(out, eq);
}