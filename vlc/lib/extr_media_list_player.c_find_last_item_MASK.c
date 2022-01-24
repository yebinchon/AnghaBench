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
typedef  int /*<<< orphan*/  libvlc_media_list_t ;
typedef  int /*<<< orphan*/  libvlc_media_list_path_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static libvlc_media_list_path_t
FUNC5( libvlc_media_list_t * p_mlist, libvlc_media_list_path_t current_item )
{
    libvlc_media_list_t * p_sublist = FUNC4(p_mlist, current_item);
    libvlc_media_list_path_t last_item_path = current_item;

    if(p_sublist)
    {
        int i_count = FUNC1(p_sublist);
        if(i_count > 0)
        {
            /* Add the last sublist item to the path. */
            last_item_path = FUNC2(current_item, i_count - 1);
            FUNC0(current_item);
            /* Check that sublist item for more descendants. */
            last_item_path = FUNC5(p_mlist, last_item_path);
        }

        FUNC3(p_sublist);
    }

    return last_item_path;
}