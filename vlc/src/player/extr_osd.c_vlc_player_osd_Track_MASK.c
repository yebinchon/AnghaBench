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
typedef  int /*<<< orphan*/  vlc_es_id_t ;
struct vlc_player_track {char* name; } ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct vlc_player_track* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 

void
FUNC6(vlc_player_t *player, vlc_es_id_t *id, bool select)
{
    enum es_format_category_e cat = FUNC3(id);
    const struct vlc_player_track *track = FUNC4(player, id);
    if (!track && select)
        return;

    const char *cat_name = FUNC2(cat);
    FUNC1(cat_name);
    const char *track_name = select ? track->name : FUNC0("N/A");
    FUNC5(player, FUNC0("%s track: %s"), cat_name, track_name);
}