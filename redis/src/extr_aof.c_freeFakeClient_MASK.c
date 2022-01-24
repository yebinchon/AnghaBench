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
struct client {int /*<<< orphan*/  watched_keys; int /*<<< orphan*/  reply; int /*<<< orphan*/  querybuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct client*) ; 

void FUNC4(struct client *c) {
    FUNC2(c->querybuf);
    FUNC1(c->reply);
    FUNC1(c->watched_keys);
    FUNC0(c);
    FUNC3(c);
}