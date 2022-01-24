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
struct dictionary_entry {int /*<<< orphan*/  extra; int /*<<< orphan*/  value; int /*<<< orphan*/  key; int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct dictionary_entry* next; struct dictionary_entry* head; } ;
struct dictionary {int /*<<< orphan*/  extra; int /*<<< orphan*/  value; int /*<<< orphan*/  key; int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct dictionary* next; struct dictionary* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dictionary_entry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct dictionary_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct dictionary *d)
{
    FUNC2("(%p)\n", d);
    if (d)
    {
        struct dictionary_entry *p;

        for (p = d->head; p; )
        {
            struct dictionary_entry *next = p->next;

            if (d->destroy)
                d->destroy(p->key, p->value, d->extra);
            FUNC1(FUNC0(), 0, p);
            p = next;
        }
        FUNC1(FUNC0(), 0, d);
    }
}