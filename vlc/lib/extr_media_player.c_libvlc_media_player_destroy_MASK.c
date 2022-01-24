#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_http_cookie_jar_t ;
struct TYPE_9__ {int /*<<< orphan*/ * p_libvlc_instance; scalar_t__ p_md; int /*<<< orphan*/  event_manager; int /*<<< orphan*/  player; int /*<<< orphan*/  listener; int /*<<< orphan*/  aout_listener; } ;
typedef  TYPE_1__ libvlc_media_player_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  snapshot_was_taken ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16( libvlc_media_player_t *p_mi )
{
    FUNC0( p_mi );

    /* Detach Callback from the main libvlc object */
    FUNC5( FUNC10(p_mi),
                     "snapshot-file", snapshot_was_taken, p_mi );

    FUNC12(p_mi->player);
    FUNC15(p_mi->player, p_mi->aout_listener);
    FUNC13(p_mi->player, p_mi->listener);
    FUNC14(p_mi->player);

    FUNC11(p_mi->player);

    if (p_mi->p_md)
        FUNC4(p_mi->p_md);
    FUNC1(&p_mi->event_manager);
    FUNC2( p_mi->p_md );

    vlc_http_cookie_jar_t *cookies = FUNC7( p_mi, "http-cookies" );
    if ( cookies )
    {
        FUNC6( p_mi, "http-cookies" );
        FUNC8( cookies );
    }

    libvlc_instance_t *instance = p_mi->p_libvlc_instance;
    FUNC9(p_mi);
    FUNC3(instance);
}