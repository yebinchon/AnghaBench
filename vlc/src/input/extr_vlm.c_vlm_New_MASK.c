#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_8__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int users; int input_state_changed; int i_id; int /*<<< orphan*/  lock_manage; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_manage; int /*<<< orphan*/  thread; int /*<<< orphan*/ * p_vod; int /*<<< orphan*/  schedule; int /*<<< orphan*/  i_schedule; int /*<<< orphan*/  media; int /*<<< orphan*/  i_media; } ;
typedef  TYPE_1__ vlm_t ;
typedef  int /*<<< orphan*/  vlm_message_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  libvlc_int_t ;
struct TYPE_10__ {TYPE_1__* p_vlm; } ;

/* Variables and functions */
 int /*<<< orphan*/  Manage ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int UINT_MAX ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  VLC_VAR_ADDRESS ; 
 int FUNC2 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_8__* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 scalar_t__ FUNC18 (TYPE_1__*,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlm_mutex ; 

vlm_t *FUNC20( libvlc_int_t *libvlc, const char *psz_vlmconf )
{
    vlm_t *p_vlm = NULL, **pp_vlm = &(FUNC4(libvlc)->p_vlm);
    vlc_object_t *p_this = FUNC1(libvlc);

    /* Avoid multiple creation */
    FUNC15( &vlm_mutex );

    p_vlm = *pp_vlm;
    if( p_vlm )
    {   /* VLM already exists */
        if( FUNC5( p_vlm->users < UINT_MAX ) )
            p_vlm->users++;
        else
            p_vlm = NULL;
        FUNC16( &vlm_mutex );
        return p_vlm;
    }

    FUNC6( p_this, "creating VLM" );

    p_vlm = FUNC12( p_this, sizeof( *p_vlm ), "vlm daemon" );
    if( !p_vlm )
    {
        FUNC16( &vlm_mutex );
        return NULL;
    }

    FUNC14( &p_vlm->lock );
    FUNC14( &p_vlm->lock_manage );
    FUNC11( &p_vlm->wait_manage );
    p_vlm->users = 1;
    p_vlm->input_state_changed = false;
    p_vlm->i_id = 1;
    FUNC0( p_vlm->i_media, p_vlm->media );
    FUNC0( p_vlm->i_schedule, p_vlm->schedule );
    p_vlm->p_vod = NULL;
    FUNC8( p_vlm, "intf-event", VLC_VAR_ADDRESS );

    if( FUNC9( &p_vlm->thread, Manage, p_vlm, VLC_THREAD_PRIORITY_LOW ) )
    {
        FUNC10( &p_vlm->wait_manage );
        FUNC13( &p_vlm->lock );
        FUNC13( &p_vlm->lock_manage );
        FUNC17(p_vlm);
        FUNC16( &vlm_mutex );
        return NULL;
    }

    *pp_vlm = p_vlm; /* for future reference */

    FUNC16( &vlm_mutex );

    /* Load our configuration file */
    if( psz_vlmconf != NULL )
    {
        vlm_message_t *p_message = NULL;
        char *psz_buffer = NULL;

        FUNC6( p_this, "loading VLM configuration" );
        if( FUNC2(&psz_buffer, "load %s", psz_vlmconf ) != -1 )
        {
            FUNC6( p_this, "%s", psz_buffer );
            if( FUNC18( p_vlm, psz_buffer, &p_message ) )
                FUNC7( p_this, "error while loading the configuration file" );

            FUNC19( p_message );
            FUNC3( psz_buffer );
        }
    }

    return p_vlm;
}