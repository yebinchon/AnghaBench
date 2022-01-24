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
struct conf_server {scalar_t__ valid; int /*<<< orphan*/  info; scalar_t__ weight; scalar_t__ port; int /*<<< orphan*/  addrstr; int /*<<< orphan*/  name; int /*<<< orphan*/  pname; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_VVERB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct conf_server*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct conf_server *cs)
{
    FUNC2(&cs->pname);
    FUNC2(&cs->name);
    FUNC2(&cs->addrstr);
    cs->port = 0;
    cs->weight = 0;

    FUNC1(&cs->info, 0, sizeof(cs->info));

    cs->valid = 0;

    FUNC0(LOG_VVERB, "init conf server %p", cs);
}