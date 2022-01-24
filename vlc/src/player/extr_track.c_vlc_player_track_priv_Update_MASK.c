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
struct vlc_player_track {char* name; int /*<<< orphan*/  fmt; } ;
struct vlc_player_track_priv {struct vlc_player_track t; } ;
typedef  int /*<<< orphan*/  es_format_t ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*) ; 

int
FUNC5(struct vlc_player_track_priv *trackpriv,
                             const char *name, const es_format_t *fmt)
{
    struct vlc_player_track *track = &trackpriv->t;

    if (FUNC3(name, track->name) != 0)
    {
        char *dup = FUNC4(name);
        if (!dup)
            return VLC_ENOMEM;
        FUNC2((char *)track->name);
        track->name = dup;
    }

    es_format_t fmtdup;
    int ret = FUNC1(&fmtdup, fmt);
    if (ret != VLC_SUCCESS)
        return ret;

    FUNC0(&track->fmt);
    track->fmt = fmtdup;
    return VLC_SUCCESS;
}