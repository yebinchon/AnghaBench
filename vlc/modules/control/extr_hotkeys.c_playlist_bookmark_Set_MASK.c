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
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  intf_thread_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int VLC_VAR_DOINHERIT ; 
 int VLC_VAR_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC7(intf_thread_t *intf,
                      vlc_playlist_t *playlist, char *name, int id)
{
    FUNC4(intf, name, VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    vlc_player_t *player = FUNC6(playlist);
    input_item_t *item = FUNC5(player);
    if (item)
    {
        char *uri = FUNC2(item);
        FUNC0(name, uri);
        FUNC3(intf, "setting playlist bookmark %i to %s", id, uri);
        FUNC1(uri);
    }
}