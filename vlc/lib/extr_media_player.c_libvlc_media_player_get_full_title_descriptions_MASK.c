#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_title_list ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct vlc_player_title {scalar_t__ name; int /*<<< orphan*/  flags; int /*<<< orphan*/  length; } ;
struct TYPE_9__ {int /*<<< orphan*/ * psz_name; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_duration; } ;
typedef  TYPE_1__ libvlc_title_description_t ;
struct TYPE_10__ {int /*<<< orphan*/ * player; } ;
typedef  TYPE_2__ libvlc_media_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,size_t) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 TYPE_1__** FUNC5 (size_t,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct vlc_player_title* FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11( libvlc_media_player_t *p_mi,
                                                     libvlc_title_description_t *** pp_titles )
{
    FUNC1( p_mi );

    int ret = -1;

    vlc_player_t *player = p_mi->player;
    FUNC7(player);

    vlc_player_title_list *titles = FUNC6(player);
    if (!titles)
        goto end;

    size_t count = FUNC10(titles);

    libvlc_title_description_t **descs = FUNC5(count, sizeof(*descs));
    if (count > 0 && !descs)
        goto end;

    for (size_t i = 0; i < count; i++)
    {
        const struct vlc_player_title *title =
            FUNC9(titles, i);
        libvlc_title_description_t *desc = FUNC3(sizeof(*desc));
        if (!desc)
        {
            FUNC2(descs, i);
            goto end;
        }

        descs[i] = desc;

        /* we want to return milliseconds to match the rest of the API */
        desc->i_duration = FUNC0(title->length);
        desc->i_flags = title->flags;
        desc->psz_name = title->name ? FUNC4(title->name) : NULL;
    }

    ret = count;
    *pp_titles = descs;

end:
    FUNC8(player);
    return ret;
}