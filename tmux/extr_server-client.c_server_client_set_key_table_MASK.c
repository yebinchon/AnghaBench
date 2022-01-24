#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct client {TYPE_1__* keytable; } ;
struct TYPE_3__ {int /*<<< orphan*/  references; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (struct client*) ; 

void
FUNC3(struct client *c, const char *name)
{
	if (name == NULL)
		name = FUNC2(c);

	FUNC1(c->keytable);
	c->keytable = FUNC0(name, 1);
	c->keytable->references++;
}