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
typedef  int /*<<< orphan*/  vlc_player_track_vector ;
typedef  int /*<<< orphan*/  vlc_es_id_t ;
struct vlc_player_track_priv {int dummy; } ;
struct vlc_player_input {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct vlc_player_input*,int /*<<< orphan*/ ) ; 
 struct vlc_player_track_priv* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 

struct vlc_player_track_priv *
FUNC3(struct vlc_player_input *input, vlc_es_id_t *id,
                               size_t *idx)
{
    vlc_player_track_vector *vec =
        FUNC1(input, FUNC0(id));
    return vec ? FUNC2(vec, id, idx) : NULL;
}