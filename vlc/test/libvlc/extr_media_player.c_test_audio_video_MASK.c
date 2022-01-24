#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_media_player_t ;
struct TYPE_4__ {int /*<<< orphan*/  psz_device; struct TYPE_4__* p_next; } ;
typedef  TYPE_1__ libvlc_audio_output_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(libvlc_media_player_t *mp)
{
    bool fs = FUNC4(mp);
    FUNC5(mp, true);
    FUNC0(FUNC4(mp));
    FUNC5(mp, false);
    FUNC0(!FUNC4(mp));
    FUNC6(mp);
    FUNC0(FUNC4(mp));
    FUNC6(mp);
    FUNC0(!FUNC4(mp));
    FUNC5(mp, fs);
    FUNC0(FUNC4(mp) == fs);

    FUNC0(FUNC7(mp) == 0.); /* default */
    FUNC8(mp, 0.); /* no-op */
    FUNC8(mp, 2.5);
    FUNC0(FUNC7(mp) == 2.5);
    FUNC8(mp, 0.);
    FUNC8(mp, 0.); /* no-op */
    FUNC0(FUNC7(mp) == 0.);

    libvlc_audio_output_device_t *aouts = FUNC1(mp);
    for (libvlc_audio_output_device_t *e = aouts; e != NULL; e = e->p_next)
    {
        FUNC3( mp, NULL, e->psz_device );
    }
    FUNC2( aouts );
}