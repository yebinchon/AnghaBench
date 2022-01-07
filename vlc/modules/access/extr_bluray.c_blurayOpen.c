
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;


struct TYPE_34__ {int * s; int pf_demux; int pf_control; int * out; int psz_filepath; TYPE_4__* p_sys; int psz_url; } ;
typedef TYPE_2__ vlc_object_t ;
typedef int uint64_t ;
typedef TYPE_2__ demux_t ;
struct TYPE_33__ {int lock; } ;
struct TYPE_35__ {int i_cover_idx; int b_menu; int p_parser; int * p_out; int p_tf_out; int i_longest_title; int * bluray; void* psz_bd_path; int p_meta; int read_block_lock; TYPE_1__ bdj; int pl_info_lock; int oldmouse; int events_delayed; int attachments; int i_attachments; int pp_title; int i_title; scalar_t__ updates; int i_still_end_time; } ;
typedef TYPE_4__ demux_sys_t ;
struct TYPE_36__ {int aacs_error_code; scalar_t__ num_bdj_titles; scalar_t__ num_hdmv_titles; scalar_t__ bdj_detected; int libjvm_detected; int bdj_handled; int bdj_supported; int bdplus_handled; int libbdplus_detected; scalar_t__ bdplus_detected; int aacs_handled; int libaacs_detected; scalar_t__ aacs_detected; int num_unsupported_titles; int top_menu_supported; int first_play_supported; int bluray_detected; } ;
typedef TYPE_5__ BLURAY_DISC_INFO ;


 int ARRAY_INIT (int ) ;
 scalar_t__ BDJO_IsBlacklisted (TYPE_2__*,void*) ;






 int BLURAY_DEBUG_MASK ;
 int BLURAY_ERROR (char*) ;
 int BLURAY_PLAYER_SETTING_AUDIO_LANG ;
 int BLURAY_PLAYER_SETTING_MENU_LANG ;
 int BLURAY_PLAYER_SETTING_PG_LANG ;
 int BLURAY_PLAYER_SETTING_REGION_CODE ;
 char* DemuxGetLanguageCode (TYPE_2__*,char*) ;
 int FindMountPoint (void**) ;
 char REGION_DEFAULT ;
 int STILL_IMAGE_NOT_SET ;
 int TAB_INIT (int ,int ) ;
 int VLC_DIALOG_QUESTION_NORMAL ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_ETIMEOUT ;
 int VLC_OBJECT (TYPE_2__*) ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_VAR_BOOL ;
 int VLC_VAR_STRING ;
 char* _ (char*) ;
 int attachThumbnail (TYPE_2__*) ;
 int bd_close (int *) ;
 TYPE_5__* bd_get_disc_info (int *) ;
 int bd_get_event (int *,int *) ;
 int bd_get_meta (int *) ;
 int * bd_init () ;
 int * bd_open (void*,int *) ;
 int bd_open_stream (int *,TYPE_2__*,int ) ;
 scalar_t__ bd_play (int *) ;
 int bd_register_argb_overlay_proc (int *,TYPE_2__*,int ,int *) ;
 int bd_register_overlay_proc (int *,TYPE_2__*,int ) ;
 int bd_set_debug_handler (int ) ;
 int bd_set_debug_mask (int ) ;
 int bd_set_player_setting (int *,int ,int) ;
 int bd_set_player_setting_str (int *,int ,char const*) ;
 int blurayArgbOverlayProc ;
 int blurayClose (TYPE_2__*) ;
 int blurayControl ;
 int blurayDemux ;
 int blurayInitTitles (TYPE_2__*,scalar_t__) ;
 int blurayOverlayProc ;
 int blurayReadBlock ;
 scalar_t__ bluraySetTitle (TYPE_2__*,int ) ;
 int bluray_DebugHandler ;
 int * esOutNew (int ,int ,TYPE_2__*) ;
 int free (char*) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int msg_Err (TYPE_2__*,char*,...) ;
 int msg_Info (TYPE_2__*,char*,int ,int ,scalar_t__,scalar_t__,int ) ;
 int msg_Warn (TYPE_2__*,char*) ;
 int p_bluray_DebugObject ;
 scalar_t__ probeFile (int ) ;
 scalar_t__ probeStream (TYPE_2__*) ;
 void* strdup (int ) ;
 int strncasecmp (int ,char*,int) ;
 int timestamps_filter_es_out_New (int *) ;
 scalar_t__ unlikely (int) ;
 int var_Create (TYPE_2__*,char*,int ) ;
 int var_InheritBool (TYPE_2__*,char*) ;
 void* var_InheritString (TYPE_2__*,char*) ;
 int var_SetBool (TYPE_2__*,char*,int) ;
 int var_SetString (TYPE_2__*,char*,char*) ;
 int vlc_demux_chained_New (int ,char*,int *) ;
 int vlc_dialog_display_error (TYPE_2__*,char*,char*,char const*) ;
 int vlc_dialog_wait_question (TYPE_2__*,int ,char*,char*,int *,char*,char*,char*) ;
 int vlc_mouse_Init (int *) ;
 int vlc_mutex_init (int *) ;
 TYPE_4__* vlc_obj_calloc (TYPE_2__*,int,int) ;
 scalar_t__ vlc_stream_Seek (int *,int ) ;
 int vlc_stream_Tell (int *) ;

__attribute__((used)) static int blurayOpen(vlc_object_t *object)
{
    demux_t *p_demux = (demux_t*)object;
    demux_sys_t *p_sys;
    bool forced;
    uint64_t i_init_pos = 0;

    const char *error_msg = ((void*)0);


    if (p_demux->out == ((void*)0))
        return VLC_EGENERIC;

    forced = !strncasecmp(p_demux->psz_url, "bluray:", 7);

    if (p_demux->s) {
        if (!strncasecmp(p_demux->psz_url, "file:", 5)) {

            return VLC_EGENERIC;
        }

        if (probeStream(p_demux) != VLC_SUCCESS) {
            return VLC_EGENERIC;
        }

    } else if (!forced) {
        if (!p_demux->psz_filepath) {
            return VLC_EGENERIC;
        }

        if (probeFile(p_demux->psz_filepath) != VLC_SUCCESS) {
            return VLC_EGENERIC;
        }
    }


    p_demux->p_sys = p_sys = vlc_obj_calloc(object, 1, sizeof(*p_sys));
    if (unlikely(!p_sys))
        return VLC_ENOMEM;

    p_sys->i_still_end_time = STILL_IMAGE_NOT_SET;


    p_sys->updates = 0;

    TAB_INIT(p_sys->i_title, p_sys->pp_title);
    TAB_INIT(p_sys->i_attachments, p_sys->attachments);
    ARRAY_INIT(p_sys->events_delayed);

    vlc_mouse_Init(&p_sys->oldmouse);

    vlc_mutex_init(&p_sys->pl_info_lock);
    vlc_mutex_init(&p_sys->bdj.lock);
    vlc_mutex_init(&p_sys->read_block_lock);



    var_Create( p_demux, "ts-cc-check", VLC_VAR_BOOL );
    var_SetBool( p_demux, "ts-cc-check", 0 );
    var_Create( p_demux, "ts-standard", VLC_VAR_STRING );
    var_SetString( p_demux, "ts-standard", "mpeg" );
    var_Create( p_demux, "ts-pmtfix-waitdata", VLC_VAR_BOOL );
    var_SetBool( p_demux, "ts-pmtfix-waitdata", 0 );
    var_Create( p_demux, "ts-patfix", VLC_VAR_BOOL );
    var_SetBool( p_demux, "ts-patfix", 0 );
    var_Create( p_demux, "ts-pcr-offsetfix", VLC_VAR_BOOL );
    var_SetBool( p_demux, "ts-pcr-offsetfix", 0 );
    {
        if (!p_demux->psz_filepath) {

            p_sys->psz_bd_path = var_InheritString(object, "dvd");
        } else {

            p_sys->psz_bd_path = strdup(p_demux->psz_filepath);
        }


        FindMountPoint(&p_sys->psz_bd_path);

        p_sys->bluray = bd_open(p_sys->psz_bd_path, ((void*)0));
    }
    if (!p_sys->bluray) {
        goto error;
    }


    const BLURAY_DISC_INFO *disc_info = bd_get_disc_info(p_sys->bluray);


    if (!disc_info->bluray_detected) {
        if (forced) {
            do { error_msg = _("Path doesn't appear to be a Blu-ray"); goto error; } while(0);
        }
        goto error;
    }

    msg_Info(p_demux, "First play: %i, Top menu: %i\n"
                      "HDMV Titles: %i, BD-J Titles: %i, Other: %i",
             disc_info->first_play_supported, disc_info->top_menu_supported,
             disc_info->num_hdmv_titles, disc_info->num_bdj_titles,
             disc_info->num_unsupported_titles);


    if (disc_info->aacs_detected) {
        msg_Dbg(p_demux, "Disc is using AACS");
        if (!disc_info->libaacs_detected)
            do { error_msg = _("This Blu-ray Disc needs a library for AACS decoding" ", and your system does not have it."); goto error; } while(0);

        if (!disc_info->aacs_handled) {
            if (disc_info->aacs_error_code) {
                switch (disc_info->aacs_error_code) {
                case 132:
                    do { error_msg = _("Blu-ray Disc is corrupted."); goto error; } while(0);
                case 129:
                    do { error_msg = _("Missing AACS configuration file!"); goto error; } while(0);
                case 128:
                    do { error_msg = _("No valid processing key found in AACS config file."); goto error; } while(0);
                case 130:
                    do { error_msg = _("No valid host certificate found in AACS config file."); goto error; } while(0);
                case 133:
                    do { error_msg = _("AACS Host certificate revoked."); goto error; } while(0);
                case 131:
                    do { error_msg = _("AACS MMC failed."); goto error; } while(0);
                }
            }
        }
    }


    if (disc_info->bdplus_detected) {
        msg_Dbg(p_demux, "Disc is using BD+");
        if (!disc_info->libbdplus_detected)
            do { error_msg = _("This Blu-ray Disc needs a library for BD+ decoding" ", and your system does not have it."); goto error; } while(0);

        if (!disc_info->bdplus_handled)
            do { error_msg = _("Your system BD+ decoding library does not work. " "Missing configuration?"); goto error; } while(0);

    }


    char *psz_region = var_InheritString(p_demux, "bluray-region");
    unsigned int region = psz_region ? (psz_region[0] - 'A') : REGION_DEFAULT;
    free(psz_region);
    bd_set_player_setting(p_sys->bluray, BLURAY_PLAYER_SETTING_REGION_CODE, 1<<region);


    const char *psz_code = DemuxGetLanguageCode( p_demux, "audio-language" );
    bd_set_player_setting_str(p_sys->bluray, BLURAY_PLAYER_SETTING_AUDIO_LANG, psz_code);
    psz_code = DemuxGetLanguageCode( p_demux, "sub-language" );
    bd_set_player_setting_str(p_sys->bluray, BLURAY_PLAYER_SETTING_PG_LANG, psz_code);
    psz_code = DemuxGetLanguageCode( p_demux, "menu-language" );
    bd_set_player_setting_str(p_sys->bluray, BLURAY_PLAYER_SETTING_MENU_LANG, psz_code);


    p_sys->p_meta = bd_get_meta(p_sys->bluray);
    if (!p_sys->p_meta)
        msg_Warn(p_demux, "Failed to get meta info.");

    p_sys->i_cover_idx = -1;
    attachThumbnail(p_demux);

    p_sys->b_menu = var_InheritBool(p_demux, "bluray-menu");


    if (p_sys->b_menu && disc_info->bdj_detected && !disc_info->bdj_handled) {
        msg_Err(p_demux, "BD-J menus not supported. Playing without menus. "
                "BD-J support: %d, JVM found: %d, JVM usable: %d",
                disc_info->bdj_supported, disc_info->libjvm_detected, disc_info->bdj_handled);
        vlc_dialog_display_error(p_demux, _("Java required"),
             _("This Blu-ray disc requires Java for menus support.%s\nThe disc will be played without menus."),
             !disc_info->libjvm_detected ? _("Java was not found on your system.") : "");
        p_sys->b_menu = 0;
    }

    if(disc_info->bdj_detected &&p_sys->b_menu &&
       BDJO_IsBlacklisted(p_demux, p_sys->psz_bd_path))
    {
        p_sys->b_menu = vlc_dialog_wait_question( p_demux,
                                                  VLC_DIALOG_QUESTION_NORMAL,
                                                  _("Play without Menus"),
                                                  _("Try anyway"),
                                                  ((void*)0),
                                                  _("BDJO Menu check"),
                                                  "%s",
                                                  _("Incompatible Java Menu detected"));
    }


    blurayInitTitles(p_demux, disc_info->num_hdmv_titles + disc_info->num_bdj_titles + 1 + 1 );




    bd_get_event(p_sys->bluray, ((void*)0));


    bd_register_overlay_proc(p_sys->bluray, p_demux, blurayOverlayProc);

    if (p_sys->b_menu) {


        if (disc_info->num_bdj_titles)
            bd_register_argb_overlay_proc(p_sys->bluray, p_demux, blurayArgbOverlayProc, ((void*)0));


        if (bd_play(p_sys->bluray) == 0)
            do { error_msg = _("Failed to start bluray playback. Please try without menu support."); goto error; } while(0);

    } else {

        if (bluraySetTitle(p_demux, p_sys->i_longest_title) != VLC_SUCCESS) {
            msg_Err(p_demux, "Could not set the title %d", p_sys->i_longest_title);
            goto error;
        }
    }

    p_sys->p_tf_out = timestamps_filter_es_out_New(p_demux->out);
    if(unlikely(!p_sys->p_tf_out))
        goto error;

    p_sys->p_out = esOutNew(VLC_OBJECT(p_demux), p_sys->p_tf_out, p_demux);
    if (unlikely(p_sys->p_out == ((void*)0)))
        goto error;

    p_sys->p_parser = vlc_demux_chained_New(VLC_OBJECT(p_demux), "ts", p_sys->p_out);
    if (!p_sys->p_parser) {
        msg_Err(p_demux, "Failed to create TS demuxer");
        goto error;
    }

    p_demux->pf_control = blurayControl;
    p_demux->pf_demux = blurayDemux;

    return VLC_SUCCESS;

error:
    if (error_msg)
        vlc_dialog_display_error(p_demux, _("Blu-ray error"), "%s", error_msg);
    blurayClose(object);

    if (p_demux->s != ((void*)0)) {

        if (vlc_stream_Seek(p_demux->s, i_init_pos) != VLC_SUCCESS) {
            msg_Err(p_demux, "Failed to seek back to stream start");
            return VLC_ETIMEOUT;
        }
    }

    return VLC_EGENERIC;

}
