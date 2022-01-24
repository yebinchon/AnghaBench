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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fmtbuf*,char) ; 
 char* fz_hex_digits ; 

__attribute__((used)) static void FUNC1(struct fmtbuf *out, unsigned int a, int s, int z, int w, int base)
{
	char buf[40];
	int i;

	i = 0;
	if (a == 0)
		buf[i++] = '0';
	while (a) {
		buf[i++] = fz_hex_digits[a % base];
		a /= base;
	}
	if (s) {
		if (z == '0')
			while (i < w - 1)
				buf[i++] = z;
		buf[i++] = s;
	}
	while (i < w)
		buf[i++] = z;
	while (i > 0)
		FUNC0(out, buf[--i]);
}