
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int p_address; } ;
typedef TYPE_1__ vlc_value_t ;
struct TYPE_22__ {int i_refcount; int player; int listener; int event_manager; int aout_listener; TYPE_3__* p_libvlc_instance; int * p_md; } ;
typedef TYPE_2__ libvlc_media_player_t ;
struct TYPE_23__ {int p_libvlc_int; } ;
typedef TYPE_3__ libvlc_instance_t ;


 int VLC_OBJECT (TYPE_2__*) ;
 int VLC_PLAYER_LOCK_REENTRANT ;
 int VLC_VAR_ADDRESS ;
 int VLC_VAR_BOOL ;
 int VLC_VAR_DOINHERIT ;
 int VLC_VAR_FLOAT ;
 int VLC_VAR_INTEGER ;
 int VLC_VAR_STRING ;
 int assert (TYPE_3__*) ;
 int libvlc_event_manager_init (int *,TYPE_2__*) ;
 int libvlc_printerr (char*) ;
 int libvlc_retain (TYPE_3__*) ;
 scalar_t__ likely (int ) ;
 int snapshot_was_taken ;
 scalar_t__ unlikely (int) ;
 int var_AddCallback (int ,char*,int ,TYPE_2__*) ;
 int var_Create (TYPE_2__*,char*,int) ;
 int var_SetBool (TYPE_2__*,char*,int) ;
 int var_SetChecked (TYPE_2__*,char*,int,TYPE_1__) ;
 int var_SetInteger (TYPE_2__*,char*,int) ;
 int vlc_http_cookies_new () ;
 TYPE_2__* vlc_object_create (int ,int) ;
 int vlc_object_delete (TYPE_2__*) ;
 int vlc_object_instance (TYPE_2__*) ;
 int vlc_player_AddListener (int ,int *,TYPE_2__*) ;
 int vlc_player_Delete (int ) ;
 int vlc_player_Lock (int ) ;
 int vlc_player_New (int ,int ,int *,int *) ;
 int vlc_player_RemoveListener (int ,int ) ;
 int vlc_player_Unlock (int ) ;
 int vlc_player_aout_AddListener (int ,int *,TYPE_2__*) ;
 int vlc_player_aout_cbs ;
 int vlc_player_cbs ;

libvlc_media_player_t *
libvlc_media_player_new( libvlc_instance_t *instance )
{
    libvlc_media_player_t * mp;

    assert(instance);

    mp = vlc_object_create (instance->p_libvlc_int, sizeof(*mp));
    if (unlikely(mp == ((void*)0)))
    {
        libvlc_printerr("Not enough memory");
        return ((void*)0);
    }


    var_Create (mp, "rate", VLC_VAR_FLOAT|VLC_VAR_DOINHERIT);
    var_Create (mp, "sout", VLC_VAR_STRING);
    var_Create (mp, "demux-filter", VLC_VAR_STRING);


    var_Create (mp, "vout", VLC_VAR_STRING|VLC_VAR_DOINHERIT);
    var_Create (mp, "window", VLC_VAR_STRING);
    var_Create (mp, "gl", VLC_VAR_STRING);
    var_Create (mp, "gles2", VLC_VAR_STRING);
    var_Create (mp, "vmem-lock", VLC_VAR_ADDRESS);
    var_Create (mp, "vmem-unlock", VLC_VAR_ADDRESS);
    var_Create (mp, "vmem-display", VLC_VAR_ADDRESS);
    var_Create (mp, "vmem-data", VLC_VAR_ADDRESS);
    var_Create (mp, "vmem-setup", VLC_VAR_ADDRESS);
    var_Create (mp, "vmem-cleanup", VLC_VAR_ADDRESS);
    var_Create (mp, "vmem-chroma", VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    var_Create (mp, "vmem-width", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "vmem-height", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "vmem-pitch", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);

    var_Create( mp, "vout-cb-opaque", VLC_VAR_ADDRESS );
    var_Create( mp, "vout-cb-setup", VLC_VAR_ADDRESS );
    var_Create( mp, "vout-cb-cleanup", VLC_VAR_ADDRESS );
    var_Create( mp, "vout-cb-resize-cb", VLC_VAR_ADDRESS );
    var_Create( mp, "vout-cb-update-output", VLC_VAR_ADDRESS );
    var_Create( mp, "vout-cb-swap", VLC_VAR_ADDRESS );
    var_Create( mp, "vout-cb-get-proc-address", VLC_VAR_ADDRESS );
    var_Create( mp, "vout-cb-make-current", VLC_VAR_ADDRESS );
    var_Create( mp, "vout-cb-select-plane", VLC_VAR_ADDRESS );

    var_Create (mp, "dec-dev", VLC_VAR_STRING);
    var_Create (mp, "drawable-xid", VLC_VAR_INTEGER);
    var_Create (mp, "keyboard-events", VLC_VAR_BOOL);
    var_SetBool (mp, "keyboard-events", 1);
    var_Create (mp, "mouse-events", VLC_VAR_BOOL);
    var_SetBool (mp, "mouse-events", 1);

    var_Create (mp, "fullscreen", VLC_VAR_BOOL);
    var_Create (mp, "autoscale", VLC_VAR_BOOL | VLC_VAR_DOINHERIT);
    var_Create (mp, "zoom", VLC_VAR_FLOAT | VLC_VAR_DOINHERIT);
    var_Create (mp, "aspect-ratio", VLC_VAR_STRING);
    var_Create (mp, "crop", VLC_VAR_STRING);
    var_Create (mp, "deinterlace", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "deinterlace-mode", VLC_VAR_STRING | VLC_VAR_DOINHERIT);

    var_Create (mp, "vbi-page", VLC_VAR_INTEGER);
    var_SetInteger (mp, "vbi-page", 100);

    var_Create (mp, "video-filter", VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    var_Create (mp, "sub-source", VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    var_Create (mp, "sub-filter", VLC_VAR_STRING | VLC_VAR_DOINHERIT);

    var_Create (mp, "marq-marquee", VLC_VAR_STRING);
    var_Create (mp, "marq-color", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "marq-opacity", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "marq-position", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "marq-refresh", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "marq-size", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "marq-timeout", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "marq-x", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "marq-y", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);

    var_Create (mp, "logo-file", VLC_VAR_STRING);
    var_Create (mp, "logo-x", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "logo-y", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "logo-delay", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "logo-repeat", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "logo-opacity", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "logo-position", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);

    var_Create (mp, "contrast", VLC_VAR_FLOAT | VLC_VAR_DOINHERIT);
    var_Create (mp, "brightness", VLC_VAR_FLOAT | VLC_VAR_DOINHERIT);
    var_Create (mp, "hue", VLC_VAR_FLOAT | VLC_VAR_DOINHERIT);
    var_Create (mp, "saturation", VLC_VAR_FLOAT | VLC_VAR_DOINHERIT);
    var_Create (mp, "gamma", VLC_VAR_FLOAT | VLC_VAR_DOINHERIT);


    var_Create (mp, "aout", VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    var_Create (mp, "audio-device", VLC_VAR_STRING);
    var_Create (mp, "mute", VLC_VAR_BOOL);
    var_Create (mp, "volume", VLC_VAR_FLOAT);
    var_Create (mp, "corks", VLC_VAR_INTEGER);
    var_Create (mp, "audio-filter", VLC_VAR_STRING);
    var_Create (mp, "role", VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    var_Create (mp, "amem-data", VLC_VAR_ADDRESS);
    var_Create (mp, "amem-setup", VLC_VAR_ADDRESS);
    var_Create (mp, "amem-cleanup", VLC_VAR_ADDRESS);
    var_Create (mp, "amem-play", VLC_VAR_ADDRESS);
    var_Create (mp, "amem-pause", VLC_VAR_ADDRESS);
    var_Create (mp, "amem-resume", VLC_VAR_ADDRESS);
    var_Create (mp, "amem-flush", VLC_VAR_ADDRESS);
    var_Create (mp, "amem-drain", VLC_VAR_ADDRESS);
    var_Create (mp, "amem-set-volume", VLC_VAR_ADDRESS);
    var_Create (mp, "amem-format", VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    var_Create (mp, "amem-rate", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);
    var_Create (mp, "amem-channels", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT);


    var_Create (mp, "video-title-show", VLC_VAR_BOOL);
    var_Create (mp, "video-title-position", VLC_VAR_INTEGER);
    var_Create (mp, "video-title-timeout", VLC_VAR_INTEGER);


    var_Create (mp, "equalizer-preamp", VLC_VAR_FLOAT);
    var_Create (mp, "equalizer-vlcfreqs", VLC_VAR_BOOL);
    var_Create (mp, "equalizer-bands", VLC_VAR_STRING);


    vlc_value_t cookies;
    cookies.p_address = vlc_http_cookies_new();
    if ( likely(cookies.p_address) )
    {
        var_Create(mp, "http-cookies", VLC_VAR_ADDRESS);
        var_SetChecked(mp, "http-cookies", VLC_VAR_ADDRESS, cookies);
    }

    mp->p_md = ((void*)0);
    mp->p_libvlc_instance = instance;

    mp->player = vlc_player_New(VLC_OBJECT(mp), VLC_PLAYER_LOCK_REENTRANT,
                                ((void*)0), ((void*)0));
    if (unlikely(!mp->player))
        goto error1;

    vlc_player_Lock(mp->player);

    mp->listener = vlc_player_AddListener(mp->player, &vlc_player_cbs, mp);
    if (unlikely(!mp->listener))
        goto error2;

    mp->aout_listener =
        vlc_player_aout_AddListener(mp->player, &vlc_player_aout_cbs, mp);
    if (unlikely(!mp->aout_listener))
        goto error3;

    vlc_player_Unlock(mp->player);

    mp->i_refcount = 1;
    libvlc_event_manager_init(&mp->event_manager, mp);
    var_AddCallback(vlc_object_instance(mp),
                    "snapshot-file", snapshot_was_taken, mp);

    libvlc_retain(instance);
    return mp;

error3:
    vlc_player_RemoveListener(mp->player, mp->listener);
error2:
    vlc_player_Unlock(mp->player);
    vlc_player_Delete(mp->player);
error1:
    vlc_object_delete(mp);
    return ((void*)0);
}
