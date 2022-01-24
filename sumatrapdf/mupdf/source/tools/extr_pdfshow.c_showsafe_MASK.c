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
 int /*<<< orphan*/  FUNC0 (char) ; 
 int showcolumn ; 

__attribute__((used)) static void FUNC1(unsigned char *buf, size_t n)
{
	size_t i;
	for (i = 0; i < n; i++) {
		if (buf[i] == '\r' || buf[i] == '\n') {
			FUNC0('\n');
			showcolumn = 0;
		}
		else if (buf[i] < 32 || buf[i] > 126) {
			FUNC0('.');
			showcolumn ++;
		}
		else {
			FUNC0(buf[i]);
			showcolumn ++;
		}
		if (showcolumn == 79) {
			FUNC0('\n');
			showcolumn = 0;
		}
	}
}