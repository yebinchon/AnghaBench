#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ p_media_library; scalar_t__ main_playlist; int /*<<< orphan*/ * parser; scalar_t__ p_vlm; scalar_t__ media_source_provider; scalar_t__ p_thumbnailer; } ;
typedef  TYPE_2__ libvlc_priv_t ;
struct TYPE_16__ {int /*<<< orphan*/  logger; } ;
struct TYPE_18__ {TYPE_1__ obj; } ;
typedef  TYPE_3__ libvlc_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 TYPE_2__* FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,char*) ; 
 char* FUNC17 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 

void FUNC24( libvlc_int_t *p_libvlc )
{
    libvlc_priv_t *priv = FUNC10 (p_libvlc);

    if (priv->parser != NULL)
        FUNC3(priv->parser);

    /* Ask the interfaces to stop and destroy them */
    FUNC12( p_libvlc, "removing all interfaces" );
    FUNC5( p_libvlc );

    if ( priv->p_thumbnailer )
        FUNC22( priv->p_thumbnailer );

    if( priv->media_source_provider )
        FUNC19( priv->media_source_provider );

    FUNC7( p_libvlc );
    FUNC8( p_libvlc );

#ifdef ENABLE_VLM
    /* Destroy VLM if created in libvlc_InternalInit */
    if( priv->p_vlm )
    {
        vlm_Delete( priv->p_vlm );
    }
#endif

#if !defined( _WIN32 ) && !defined( __OS2__ )
    char *pidfile = FUNC17( p_libvlc, "pidfile" );
    if( pidfile != NULL )
    {
        FUNC12( p_libvlc, "removing PID file %s", pidfile );
        if( FUNC15( pidfile ) )
            FUNC13( p_libvlc, "cannot remove PID file %s: %s",
                      pidfile, FUNC21(errno) );
        FUNC2( pidfile );
    }
#endif

    if (priv->parser != NULL)
        FUNC4(priv->parser);

    if (priv->main_playlist)
        FUNC20(priv->main_playlist);

    if ( priv->p_media_library )
        FUNC9( priv->p_media_library );

    FUNC6( p_libvlc );

    /* Save the configuration */
    if( !FUNC16( p_libvlc, "ignore-config" ) )
        FUNC1( FUNC0(p_libvlc) );

    FUNC18(p_libvlc->obj.logger);
    /* Free module bank. It is refcounted, so we call this each time  */
    FUNC11 (true);
#if defined(_WIN32) || defined(__OS2__)
    system_End( );
#endif
}