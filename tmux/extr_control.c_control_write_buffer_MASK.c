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
struct evbuffer {int dummy; } ;
struct client {int /*<<< orphan*/  stdout_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct client*) ; 

void
FUNC3(struct client *c, struct evbuffer *buffer)
{
	FUNC1(c->stdout_data, buffer);
	FUNC0(c->stdout_data, "\n", 1);
	FUNC2(c);
}