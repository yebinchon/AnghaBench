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
typedef  int /*<<< orphan*/  vlc_player_t ;
struct vlc_player_track {int /*<<< orphan*/  name; int /*<<< orphan*/  es_id; } ;
struct TYPE_7__ {struct TYPE_7__* p_next; int /*<<< orphan*/  psz_name; int /*<<< orphan*/  i_id; } ;
typedef  TYPE_1__ libvlc_track_description_t ;
struct TYPE_8__ {int /*<<< orphan*/ * player; } ;
typedef  TYPE_2__ libvlc_media_player_t ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct vlc_player_track* FUNC6 (int /*<<< orphan*/ *,int,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

libvlc_track_description_t *
        FUNC10( libvlc_media_player_t *p_mi,
                                      enum es_format_category_e cat )
{
    vlc_player_t *player = p_mi->player;
    FUNC8(player);

    libvlc_track_description_t *ret, **pp = &ret;

    size_t count = FUNC7(player, cat);
    for (size_t i = 0; i < count; i++)
    {
        libvlc_track_description_t *tr = FUNC2(sizeof (*tr));
        if (FUNC4(tr == NULL))
        {
            FUNC1("Not enough memory");
            continue;
        }

        const struct vlc_player_track *track =
            FUNC6(player, cat, i);

        *pp = tr;
        tr->i_id = FUNC5(track->es_id);
        tr->psz_name = FUNC3(track->name);
        if (FUNC4(!tr->psz_name))
        {
            FUNC0(tr);
            continue;
        }
        pp = &tr->p_next;
    }

    *pp = NULL;

    FUNC9(player);
    return ret;
}