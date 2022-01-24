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
struct dictionary_entry {void* value; } ;
struct dictionary {int dummy; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,void*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 struct dictionary_entry** FUNC1 (struct dictionary*,void const*) ; 

BOOL FUNC2(struct dictionary *d, const void *k, void **value)
{
    struct dictionary_entry **prior;
    BOOL ret = FALSE;

    FUNC0("(%p, %p, %p)\n", d, k, value);
    if (!d)
        return FALSE;
    if (!value)
        return FALSE;
    if ((prior = FUNC1(d, k)))
    {
        *value = (*prior)->value;
        ret = TRUE;
    }
    FUNC0("returning %d (%p)\n", ret, *value);
    return ret;
}