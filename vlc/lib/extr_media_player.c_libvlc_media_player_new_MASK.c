#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  p_address; } ;
typedef  TYPE_1__ vlc_value_t ;
struct TYPE_22__ {int i_refcount; int /*<<< orphan*/  player; int /*<<< orphan*/  listener; int /*<<< orphan*/  event_manager; int /*<<< orphan*/  aout_listener; TYPE_3__* p_libvlc_instance; int /*<<< orphan*/ * p_md; } ;
typedef  TYPE_2__ libvlc_media_player_t ;
struct TYPE_23__ {int /*<<< orphan*/  p_libvlc_int; } ;
typedef  TYPE_3__ libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  VLC_PLAYER_LOCK_REENTRANT ; 
 int VLC_VAR_ADDRESS ; 
 int VLC_VAR_BOOL ; 
 int VLC_VAR_DOINHERIT ; 
 int VLC_VAR_FLOAT ; 
 int VLC_VAR_INTEGER ; 
 int VLC_VAR_STRING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snapshot_was_taken ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  vlc_player_aout_cbs ; 
 int /*<<< orphan*/  vlc_player_cbs ; 

libvlc_media_player_t *
FUNC23( libvlc_instance_t *instance )
{
    libvlc_media_player_t * mp;

    FUNC1(instance);

    mp = FUNC13 (instance->p_libvlc_int, sizeof(*mp));
    if (FUNC6(mp == NULL))
    {
        FUNC3("Not enough memory");
        return NULL;
    }

    /* Input */
    FUNC8 (mp, "rate", VLC_VAR_FLOAT|VLC_VAR_DOINHERIT);
    FUNC8 (mp, "sout", VLC_VAR_STRING);
    FUNC8 (mp, "demux-filter", VLC_VAR_STRING);

    /* Video */
    FUNC8 (mp, "vout", VLC_VAR_STRING|VLC_VAR_DOINHERIT);
    FUNC8 (mp, "window", VLC_VAR_STRING);
    FUNC8 (mp, "gl", VLC_VAR_STRING);
    FUNC8 (mp, "gles2", VLC_VAR_STRING);
    FUNC8 (mp, "vmem-lock", VLC_VAR_ADDRESS);
    FUNC8 (mp, "vmem-unlock", VLC_VAR_ADDRESS);
    FUNC8 (mp, "vmem-display", VLC_VAR_ADDRESS);
    FUNC8 (mp, "vmem-data", VLC_VAR_ADDRESS);
    FUNC8 (mp, "vmem-setup", VLC_VAR_ADDRESS);
    FUNC8 (mp, "vmem-cleanup", VLC_VAR_ADDRESS);
    FUNC8 (mp, "vmem-chroma", VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "vmem-width", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "vmem-height", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "vmem-pitch", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);

    FUNC8( mp, "vout-cb-opaque", VLC_VAR_ADDRESS );
    FUNC8( mp, "vout-cb-setup", VLC_VAR_ADDRESS );
    FUNC8( mp, "vout-cb-cleanup", VLC_VAR_ADDRESS );
    FUNC8( mp, "vout-cb-resize-cb", VLC_VAR_ADDRESS );
    FUNC8( mp, "vout-cb-update-output", VLC_VAR_ADDRESS );
    FUNC8( mp, "vout-cb-swap", VLC_VAR_ADDRESS );
    FUNC8( mp, "vout-cb-get-proc-address", VLC_VAR_ADDRESS );
    FUNC8( mp, "vout-cb-make-current", VLC_VAR_ADDRESS );
    FUNC8( mp, "vout-cb-select-plane", VLC_VAR_ADDRESS );

    FUNC8 (mp, "dec-dev", VLC_VAR_STRING);
    FUNC8 (mp, "drawable-xid", VLC_VAR_INTEGER);
#if defined (_WIN32) || defined (__OS2__)
    var_Create (mp, "drawable-hwnd", VLC_VAR_INTEGER);
#endif
#ifdef __APPLE__
    var_Create (mp, "drawable-nsobject", VLC_VAR_ADDRESS);
#endif
#ifdef __ANDROID__
    var_Create (mp, "drawable-androidwindow", VLC_VAR_ADDRESS);
#endif

    FUNC8 (mp, "keyboard-events", VLC_VAR_BOOL);
    FUNC9 (mp, "keyboard-events", true);
    FUNC8 (mp, "mouse-events", VLC_VAR_BOOL);
    FUNC9 (mp, "mouse-events", true);

    FUNC8 (mp, "fullscreen", VLC_VAR_BOOL);
    FUNC8 (mp, "autoscale", VLC_VAR_BOOL | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "zoom", VLC_VAR_FLOAT | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "aspect-ratio", VLC_VAR_STRING);
    FUNC8 (mp, "crop", VLC_VAR_STRING);
    FUNC8 (mp, "deinterlace", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "deinterlace-mode", VLC_VAR_STRING | VLC_VAR_DOINHERIT);

    FUNC8 (mp, "vbi-page", VLC_VAR_INTEGER);
    FUNC11 (mp, "vbi-page", 100);

    FUNC8 (mp, "video-filter", VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "sub-source", VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "sub-filter", VLC_VAR_STRING | VLC_VAR_DOINHERIT);

    FUNC8 (mp, "marq-marquee", VLC_VAR_STRING);
    FUNC8 (mp, "marq-color", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "marq-opacity", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "marq-position", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "marq-refresh", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "marq-size", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "marq-timeout", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "marq-x", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "marq-y", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);

    FUNC8 (mp, "logo-file", VLC_VAR_STRING);
    FUNC8 (mp, "logo-x", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "logo-y", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "logo-delay", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "logo-repeat", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "logo-opacity", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "logo-position", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);

    FUNC8 (mp, "contrast", VLC_VAR_FLOAT | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "brightness", VLC_VAR_FLOAT | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "hue", VLC_VAR_FLOAT | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "saturation", VLC_VAR_FLOAT | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "gamma", VLC_VAR_FLOAT | VLC_VAR_DOINHERIT);

     /* Audio */
    FUNC8 (mp, "aout", VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "audio-device", VLC_VAR_STRING);
    FUNC8 (mp, "mute", VLC_VAR_BOOL);
    FUNC8 (mp, "volume", VLC_VAR_FLOAT);
    FUNC8 (mp, "corks", VLC_VAR_INTEGER);
    FUNC8 (mp, "audio-filter", VLC_VAR_STRING);
    FUNC8 (mp, "role", VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "amem-data", VLC_VAR_ADDRESS);
    FUNC8 (mp, "amem-setup", VLC_VAR_ADDRESS);
    FUNC8 (mp, "amem-cleanup", VLC_VAR_ADDRESS);
    FUNC8 (mp, "amem-play", VLC_VAR_ADDRESS);
    FUNC8 (mp, "amem-pause", VLC_VAR_ADDRESS);
    FUNC8 (mp, "amem-resume", VLC_VAR_ADDRESS);
    FUNC8 (mp, "amem-flush", VLC_VAR_ADDRESS);
    FUNC8 (mp, "amem-drain", VLC_VAR_ADDRESS);
    FUNC8 (mp, "amem-set-volume", VLC_VAR_ADDRESS);
    FUNC8 (mp, "amem-format", VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "amem-rate", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    FUNC8 (mp, "amem-channels", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);

    /* Video Title */
    FUNC8 (mp, "video-title-show", VLC_VAR_BOOL);
    FUNC8 (mp, "video-title-position", VLC_VAR_INTEGER);
    FUNC8 (mp, "video-title-timeout", VLC_VAR_INTEGER);

    /* Equalizer */
    FUNC8 (mp, "equalizer-preamp", VLC_VAR_FLOAT);
    FUNC8 (mp, "equalizer-vlcfreqs", VLC_VAR_BOOL);
    FUNC8 (mp, "equalizer-bands", VLC_VAR_STRING);

    /* Initialize the shared HTTP cookie jar */
    vlc_value_t cookies;
    cookies.p_address = FUNC12();
    if ( FUNC5(cookies.p_address) )
    {
        FUNC8(mp, "http-cookies", VLC_VAR_ADDRESS);
        FUNC10(mp, "http-cookies", VLC_VAR_ADDRESS, cookies);
    }

    mp->p_md = NULL;
    mp->p_libvlc_instance = instance;
    /* use a reentrant lock to allow calling libvlc functions from callbacks */
    mp->player = FUNC19(FUNC0(mp), VLC_PLAYER_LOCK_REENTRANT,
                                NULL, NULL);
    if (FUNC6(!mp->player))
        goto error1;

    FUNC18(mp->player);

    mp->listener = FUNC16(mp->player, &vlc_player_cbs, mp);
    if (FUNC6(!mp->listener))
        goto error2;

    mp->aout_listener =
        FUNC22(mp->player, &vlc_player_aout_cbs, mp);
    if (FUNC6(!mp->aout_listener))
        goto error3;

    FUNC21(mp->player);

    mp->i_refcount = 1;
    FUNC2(&mp->event_manager, mp);

    /* Snapshot initialization */
    /* Attach a var callback to the global object to provide the glue between
     * vout_thread that generates the event and media_player that re-emits it
     * with its own event manager
     *
     * FIXME: It's unclear why we want to put this in public API, and why we
     * want to expose it in such a limiting and ugly way.
     */
    FUNC7(FUNC15(mp),
                    "snapshot-file", snapshot_was_taken, mp);

    FUNC4(instance);
    return mp;

error3:
    FUNC20(mp->player, mp->listener);
error2:
    FUNC21(mp->player);
    FUNC17(mp->player);
error1:
    FUNC14(mp);
    return NULL;
}