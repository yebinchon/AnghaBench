#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {TYPE_1__ items; } ;
typedef  TYPE_2__ vlc_playlist_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  enum input_item_preparse_status { ____Placeholder_input_item_preparse_status } input_item_preparse_status ;

/* Variables and functions */
 int ITEM_PREPARSE_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_items_updated ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC5(input_item_t *media,
                  enum input_item_preparse_status status, void *userdata)
{
    FUNC0(media); /* retrieved by subtree->p_item */
    vlc_playlist_t *playlist = userdata;

    if (status != ITEM_PREPARSE_DONE)
        return;

    FUNC2(playlist);
    ssize_t index = FUNC1(playlist, media);
    if (index != -1)
        FUNC3(playlist, on_items_updated, index,
                            &playlist->items.data[index], 1);
    FUNC4(playlist);
}