#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_term {TYPE_2__* codes; } ;
typedef  enum tty_code_code { ____Placeholder_tty_code_code } tty_code_code ;
struct TYPE_3__ {char const* string; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ value; } ;

/* Variables and functions */
 scalar_t__ TTYCODE_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_term*,int) ; 

const char *
FUNC2(struct tty_term *term, enum tty_code_code code)
{
	if (!FUNC1(term, code))
		return ("");
	if (term->codes[code].type != TTYCODE_STRING)
		FUNC0("not a string: %d", code);
	return (term->codes[code].value.string);
}