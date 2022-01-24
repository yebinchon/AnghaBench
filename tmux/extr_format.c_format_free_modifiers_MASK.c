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
typedef  size_t u_int ;
struct format_modifier {int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct format_modifier*) ; 

__attribute__((used)) static void
FUNC2(struct format_modifier *list, u_int count)
{
	u_int	i;

	for (i = 0; i < count; i++)
		FUNC0(list[i].argc, list[i].argv);
	FUNC1(list);
}