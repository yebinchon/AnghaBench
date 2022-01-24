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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int
FUNC1(struct seq_file *f, unsigned char *p, int l)
{
	int i, j;

	for (i = 0; ; i++) {
		FUNC0(f, "%03x:", i);

		for (j = 0; j < 16; j++) {
			if (i * 16 + j >= l) {
				FUNC0(f, "\n");
				goto out;
			}

			FUNC0(f, " %02x", (unsigned char)p[i * 16 + j]);
		}
		FUNC0(f, "\n");
	}
out:
	return (0);
}