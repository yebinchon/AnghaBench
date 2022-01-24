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
typedef  int /*<<< orphan*/  vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
typedef  int /*<<< orphan*/  intf_thread_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC8(intf_thread_t *intf,
                       vlc_playlist_t *playlist, char *name)
{
    char *bookmark_uri = FUNC3(intf, name);
    size_t count = FUNC4(playlist);
    size_t i;
    for (i = 0; i < count; ++i)
    {
        vlc_playlist_item_t *plitem = FUNC5(playlist, i);
        input_item_t *item = FUNC7(plitem);
        char *item_uri = FUNC1(item);
        if (!FUNC2(bookmark_uri, item_uri))
            break;
        FUNC0(item_uri);
    }
    if (i != count)
        FUNC6(playlist, i);
    FUNC0(bookmark_uri);
}