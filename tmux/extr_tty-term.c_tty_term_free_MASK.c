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
typedef  size_t u_int ;
struct TYPE_2__ {struct tty_term* string; } ;
struct tty_term {scalar_t__ references; scalar_t__ type; struct tty_term* name; struct tty_term* codes; TYPE_1__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_term*,int /*<<< orphan*/ ) ; 
 scalar_t__ TTYCODE_STRING ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC1 (struct tty_term*) ; 
 size_t FUNC2 () ; 

void
FUNC3(struct tty_term *term)
{
	u_int	i;

	if (--term->references != 0)
		return;

	FUNC0(term, entry);

	for (i = 0; i < FUNC2(); i++) {
		if (term->codes[i].type == TTYCODE_STRING)
			FUNC1(term->codes[i].value.string);
	}
	FUNC1(term->codes);

	FUNC1(term->name);
	FUNC1(term);
}