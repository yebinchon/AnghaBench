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
struct dictionary_entry {struct dictionary_entry* next; void* value; void* key; } ;
struct dictionary {int /*<<< orphan*/  num_entries; struct dictionary_entry* head; int /*<<< orphan*/  extra; int /*<<< orphan*/  (* destroy ) (void*,void*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct dictionary_entry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct dictionary*,void const*,void const*) ; 
 struct dictionary_entry** FUNC3 (struct dictionary*,void const*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ ) ; 

void FUNC5(struct dictionary *d, const void *k, const void *v)
{
    struct dictionary_entry **prior;

    FUNC2("(%p, %p, %p)\n", d, k, v);
    if (!d)
        return;
    if ((prior = FUNC3(d, k)))
    {
        if (d->destroy)
            d->destroy((*prior)->key, (*prior)->value, d->extra);
        (*prior)->key = (void *)k;
        (*prior)->value = (void *)v;
    }
    else
    {
        struct dictionary_entry *elem = FUNC1(FUNC0(), 0,
                                            sizeof(struct dictionary_entry));

        if (!elem)
            return;
        elem->key = (void *)k;
        elem->value = (void *)v;
        elem->next = d->head;
        d->head = elem;
        d->num_entries++;
    }
}