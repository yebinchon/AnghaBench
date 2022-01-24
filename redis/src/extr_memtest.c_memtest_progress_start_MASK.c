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
struct TYPE_2__ {int ws_col; int ws_row; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int progress_full ; 
 scalar_t__ progress_printed ; 
 int /*<<< orphan*/  stdout ; 
 TYPE_1__ ws ; 

void FUNC2(char *title, int pass) {
    int j;

    FUNC1("\x1b[H\x1b[2J");    /* Cursor home, clear screen. */
    /* Fill with dots. */
    for (j = 0; j < ws.ws_col*(ws.ws_row-2); j++) FUNC1(".");
    FUNC1("Please keep the test running several minutes per GB of memory.\n");
    FUNC1("Also check http://www.memtest86.com/ and http://pyropus.ca/software/memtester/");
    FUNC1("\x1b[H\x1b[2K");          /* Cursor home, clear current line.  */
    FUNC1("%s [%d]\n", title, pass); /* Print title. */
    progress_printed = 0;
    progress_full = ws.ws_col*(ws.ws_row-3);
    FUNC0(stdout);
}