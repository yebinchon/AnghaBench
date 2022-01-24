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
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct media_params {int dummy; } ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 struct media_params FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLC_PLAYER_LOCK_NORMAL ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char*,struct media_params*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(vlc_object_t *obj, bool start)
{
    FUNC5("delete_while_playback (start: %d)\n", start);
    vlc_player_t *player = FUNC8(obj, VLC_PLAYER_LOCK_NORMAL,
                                          NULL, NULL);

    struct media_params params = FUNC0(FUNC1(10));
    input_item_t *media = FUNC3("media1", &params);
    FUNC2(*media);

    FUNC7(player);
    int ret = FUNC9(player, media);
    FUNC2(ret == VLC_SUCCESS);
    FUNC4(media);

    if (start)
    {
        ret = FUNC10(player);
        FUNC2(ret == VLC_SUCCESS);
    }

    FUNC11(player);

    FUNC6(player);
}