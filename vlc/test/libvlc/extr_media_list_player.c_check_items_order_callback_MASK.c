#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct check_items_order_data {int index; int count; int done_playing; int /*<<< orphan*/ ** items; } ;
typedef  int /*<<< orphan*/  libvlc_media_t ;
struct TYPE_5__ {int /*<<< orphan*/ * item; } ;
struct TYPE_6__ {TYPE_1__ media_list_player_next_item_set; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef  TYPE_3__ libvlc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  libvlc_meta_Title ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(const libvlc_event_t * p_event, void * user_data)
{
    struct check_items_order_data *checks = user_data;
    libvlc_media_t *md = p_event->u.media_list_player_next_item_set.item;
    FUNC0(checks->index < checks->count);
    if (checks->items[checks->index] != md)
    {
        char *title = FUNC2(md, libvlc_meta_Title);
        FUNC3 ("Got items %s\n", title);
        FUNC1(title);
    }
    FUNC0(checks->items[checks->index] == md);

    char *title = FUNC2(md, libvlc_meta_Title);
    FUNC3 ("Item %d '%s' was correctly queued\n", checks->index, title);
    FUNC1(title);

    if (checks->index == (checks->count - 1))
    {
        FUNC3 ("Done playing with success\n");
        checks->done_playing = true;
    }
    checks->index++;
}