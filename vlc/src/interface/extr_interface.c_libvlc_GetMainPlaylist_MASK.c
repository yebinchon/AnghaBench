#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_playlist_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * main_playlist; } ;
typedef  TYPE_1__ libvlc_priv_t ;
typedef  int /*<<< orphan*/  libvlc_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static vlc_playlist_t *
FUNC6(libvlc_int_t *libvlc)
{
    libvlc_priv_t *priv = FUNC2(libvlc);

    FUNC3(&priv->lock);
    vlc_playlist_t *playlist = priv->main_playlist;
    if (priv->main_playlist == NULL)
    {
        playlist = priv->main_playlist = FUNC5(FUNC1(libvlc));
        if (playlist)
            FUNC0(playlist, FUNC1(libvlc));
    }
    FUNC4(&priv->lock);

    return playlist;
}