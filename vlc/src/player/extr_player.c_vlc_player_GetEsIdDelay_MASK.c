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
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  vlc_es_id_t ;
struct vlc_player_track_priv {int /*<<< orphan*/  delay; } ;
struct vlc_player_input {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT64_MAX ; 
 struct vlc_player_input* FUNC0 (int /*<<< orphan*/ *) ; 
 struct vlc_player_track_priv* FUNC1 (struct vlc_player_input*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

vlc_tick_t
FUNC2(vlc_player_t *player, vlc_es_id_t *es_id)
{
    struct vlc_player_input *input = FUNC0(player);
    if (!input)
        return 0;

    struct vlc_player_track_priv *trackpriv =
        FUNC1(input, es_id, NULL);
    return trackpriv ? trackpriv->delay : INT64_MAX;
}