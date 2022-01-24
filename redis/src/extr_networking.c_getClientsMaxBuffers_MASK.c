#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_4__ {int /*<<< orphan*/  querybuf; int /*<<< orphan*/  reply; } ;
typedef  TYPE_1__ client ;
struct TYPE_5__ {int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__ server ; 

void FUNC5(unsigned long *longest_output_list,
                          unsigned long *biggest_input_buffer) {
    client *c;
    listNode *ln;
    listIter li;
    unsigned long lol = 0, bib = 0;

    FUNC3(server.clients,&li);
    while ((ln = FUNC1(&li)) != NULL) {
        c = FUNC2(ln);

        if (FUNC0(c->reply) > lol) lol = FUNC0(c->reply);
        if (FUNC4(c->querybuf) > bib) bib = FUNC4(c->querybuf);
    }
    *longest_output_list = lol;
    *biggest_input_buffer = bib;
}