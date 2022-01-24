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
struct cmdline_info {int /*<<< orphan*/  cmdlen; int /*<<< orphan*/  cmdbuff; } ;
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 struct cmdline_info* FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char_u *
FUNC2()
{
    struct cmdline_info *p = FUNC0();

    if (p == NULL)
	return NULL;
    return FUNC1(p->cmdbuff, p->cmdlen);
}