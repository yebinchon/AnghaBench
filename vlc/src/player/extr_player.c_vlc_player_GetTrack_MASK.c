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
struct vlc_player_track {int dummy; } ;
struct vlc_player_track_priv {struct vlc_player_track const t; } ;

/* Variables and functions */
 struct vlc_player_track_priv* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

const struct vlc_player_track *
FUNC1(vlc_player_t *player, vlc_es_id_t *id)
{
    struct vlc_player_track_priv *trackpriv =
        FUNC0(player, id);
    return trackpriv ? &trackpriv->t : NULL;
}