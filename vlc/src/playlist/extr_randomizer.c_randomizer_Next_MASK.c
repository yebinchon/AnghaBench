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
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
struct TYPE_2__ {scalar_t__ size; } ;
struct randomizer {scalar_t__ next; scalar_t__ head; TYPE_1__ items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct randomizer*) ; 
 int /*<<< orphan*/ * FUNC2 (struct randomizer*) ; 

vlc_playlist_item_t *
FUNC3(struct randomizer *r)
{
    FUNC0(FUNC1(r));
    vlc_playlist_item_t *item = FUNC2(r);
    r->next++;
    if (r->next == r->items.size && r->next != r->head)
        r->next = 0;
    return item;
}