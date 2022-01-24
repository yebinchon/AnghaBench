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
struct define {int /*<<< orphan*/  name; scalar_t__ value; struct define* next; } ;

/* Variables and functions */
 struct define* cmdline_defines ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void)
{
    struct define *def;

    for (def = cmdline_defines; def; def = def->next)
    {
        if (def->value) FUNC0( def->name );
    }
}