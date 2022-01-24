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
 size_t curscript ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * saved_typebuf ; 
 int /*<<< orphan*/ ** scriptin ; 
 int /*<<< orphan*/  typebuf ; 

__attribute__((used)) static void
FUNC2()
{
    FUNC1();
    typebuf = saved_typebuf[curscript];

    FUNC0(scriptin[curscript]);
    scriptin[curscript] = NULL;
    if (curscript > 0)
	--curscript;
}