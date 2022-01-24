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
struct vlc_player_track {int /*<<< orphan*/  selected; int /*<<< orphan*/  name; int /*<<< orphan*/  es_id; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct vlc_player_track* FUNC8 (int /*<<< orphan*/ *,int,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(lua_State *L,
                                     enum es_format_category_e cat)
{
    vlc_player_t *player = FUNC12(L);

    FUNC10(player);

    size_t count = FUNC9(player, cat);
    FUNC0(L, count, 0);

    for (size_t i = 0; i < count; ++i)
    {
        const struct vlc_player_track *track =
                FUNC8(player, cat, i);
        if (!track) {
            continue;
        }

        FUNC1(L);

        FUNC3(L, FUNC7(track->es_id));
        FUNC6(L, -2, "id");

        FUNC4(L, track->name);
        FUNC6(L, -2, "name");

        FUNC2(L, track->selected);
        FUNC6(L, -2, "selected");

        FUNC5(L, -2, i + 1);
    }

    FUNC11(player);

    return 1;
}