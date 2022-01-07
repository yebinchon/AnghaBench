
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* psz_string; } ;
typedef TYPE_2__ vlc_value_t ;
typedef int vlc_player_title_list ;
typedef int vlc_player_t ;
struct vlc_player_track {char const* name; } ;
struct vlc_player_title {int chapter_count; } ;
typedef int ssize_t ;
struct TYPE_9__ {TYPE_1__* p_sys; } ;
typedef TYPE_3__ intf_thread_t ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;
struct TYPE_7__ {int playlist; } ;


 int AUDIO_ES ;
 int SPU_ES ;
 int VIDEO_ES ;
 int VLC_PLAYER_SELECT_EXCLUSIVE ;
 double atof (char*) ;
 int atoi (char*) ;
 int msg_print (TYPE_3__*,char*,...) ;
 int strcmp (char const*,char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int vlc_player_GetSelectedChapterIdx (int *) ;
 struct vlc_player_title* vlc_player_GetSelectedTitle (int *) ;
 int vlc_player_GetSelectedTitleIdx (int *) ;
 struct vlc_player_track* vlc_player_GetSelectedTrack (int *,int) ;
 int * vlc_player_GetTitleList (int *) ;
 struct vlc_player_track* vlc_player_GetTrackAt (int *,int,size_t) ;
 size_t vlc_player_GetTrackCount (int *,int) ;
 int vlc_player_IsRecording (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_SelectChapterIdx (int *,int) ;
 int vlc_player_SelectTitleIdx (int *,size_t) ;
 int vlc_player_SelectTrack (int *,struct vlc_player_track const*,int ) ;
 int vlc_player_SetPosition (int *,float) ;
 int vlc_player_SetRecordingEnabled (int *,int) ;
 int vlc_player_SetTime (int *,int ) ;
 int vlc_player_Unlock (int *) ;
 size_t vlc_player_title_list_GetCount (int *) ;
 int * vlc_playlist_GetPlayer (int ) ;
 int vlc_tick_from_sec (int) ;

__attribute__((used)) static void Input(intf_thread_t *intf, char const *psz_cmd,
                  vlc_value_t newval)
{
    vlc_player_t *player = vlc_playlist_GetPlayer(intf->p_sys->playlist);

    vlc_player_Lock(player);

    if( !strcmp( psz_cmd, "seek" ) )
    {
        if( strlen( newval.psz_string ) > 0 &&
            newval.psz_string[strlen( newval.psz_string ) - 1] == '%' )
        {
            float f = atof( newval.psz_string ) / 100.0;
            vlc_player_SetPosition(player, f);
        }
        else
        {
            int t = atoi( newval.psz_string );
            vlc_player_SetTime(player, vlc_tick_from_sec(t));
        }
    }
    else if( !strcmp( psz_cmd, "chapter" ) )
    {
            if ( *newval.psz_string )
            {

                vlc_player_SelectChapterIdx(player, atoi(newval.psz_string));
            }
            else
            {

                struct vlc_player_title const *title = vlc_player_GetSelectedTitle(player);
                ssize_t chapter = -1;
                if (title != ((void*)0))
                    chapter = vlc_player_GetSelectedChapterIdx(player);
                if (chapter != -1)
                    msg_print(intf, "Currently playing chapter %zd/%zu.",
                              chapter, title->chapter_count);
                else
                    msg_print(intf, "No chapter selected.");
            }
    }
    else if( !strcmp( psz_cmd, "title" ) )
    {
            if ( *newval.psz_string )
            {

                int idx = atoi(newval.psz_string);
                if (idx >= 0)
                    vlc_player_SelectTitleIdx(player, (size_t)idx);
            }
            else
            {

                ssize_t title = vlc_player_GetSelectedTitleIdx(player);
                vlc_player_title_list *titles =
                    vlc_player_GetTitleList(player);
                size_t count = 0;
                if (titles != ((void*)0))
                    count = vlc_player_title_list_GetCount(titles);
                if (title != -1 && count != 0)
                    msg_print(intf, "Currently playing title %zd/%zu.", title,
                              count);
                else
                    msg_print(intf, "No title selected.");
            }
    }
    else if( !strcmp( psz_cmd, "atrack" )
             || !strcmp( psz_cmd, "vtrack" )
             || !strcmp( psz_cmd, "strack" ) )
    {
        enum es_format_category_e cat;
        if( !strcmp( psz_cmd, "atrack" ) )
            cat = AUDIO_ES;
        else if( !strcmp( psz_cmd, "vtrack" ) )
            cat = VIDEO_ES;
        else
            cat = SPU_ES;
        if( newval.psz_string && *newval.psz_string )
        {
            int idx = atoi(newval.psz_string);
            if (idx < 0)
                goto out;
            size_t track_count = vlc_player_GetTrackCount(player, cat);
            if ((unsigned)idx >= track_count)
                goto out;
            struct vlc_player_track const *track =
                vlc_player_GetTrackAt(player, cat, (size_t)idx);
            if (!track)
                goto out;
            vlc_player_SelectTrack(player, track, VLC_PLAYER_SELECT_EXCLUSIVE);
        }
        else
        {
            struct vlc_player_track const *cur_track =
                vlc_player_GetSelectedTrack(player, cat);
            char const *name = cur_track ? cur_track->name : psz_cmd;
            msg_print(intf, "+----[ %s ]", name);
            size_t count = vlc_player_GetTrackCount(player, cat);
            for (size_t i = 0; i < count; ++i)
            {
                struct vlc_player_track const *track =
                    vlc_player_GetTrackAt(player, cat, i);
                msg_print(intf, "| %zu - %s%s",
                          i, track->name, track == cur_track ? " *" : "");
            }
            msg_print(intf, "+----[ end of %s ]", name);
        }
    }
    else if( !strcmp( psz_cmd, "record" ) )
    {
        bool b_update = 1;
        bool b_value = vlc_player_IsRecording(player);

        if( newval.psz_string[0] != '\0' )
        {
            if ( ( !strncmp( newval.psz_string, "on", 2 ) && b_value ) ||
                 ( !strncmp( newval.psz_string, "off", 3 ) && !b_value ) )
            {
                b_update = 0;
            }
        }
        if( b_update )
        {
            b_value = !b_value;
            vlc_player_SetRecordingEnabled( player, b_value );
        }
    }
out:
    vlc_player_Unlock(player);
}
