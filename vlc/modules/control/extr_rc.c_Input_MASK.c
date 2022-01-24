#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* psz_string; } ;
typedef  TYPE_2__ vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_player_title_list ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct vlc_player_track {char const* name; } ;
struct vlc_player_title {int /*<<< orphan*/  chapter_count; } ;
typedef  int ssize_t ;
struct TYPE_9__ {TYPE_1__* p_sys; } ;
typedef  TYPE_3__ intf_thread_t ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;
struct TYPE_7__ {int /*<<< orphan*/  playlist; } ;

/* Variables and functions */
 int AUDIO_ES ; 
 int SPU_ES ; 
 int VIDEO_ES ; 
 int /*<<< orphan*/  VLC_PLAYER_SELECT_EXCLUSIVE ; 
 double FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 struct vlc_player_title* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 struct vlc_player_track* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 struct vlc_player_track* FUNC11 (int /*<<< orphan*/ *,int,size_t) ; 
 size_t FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct vlc_player_track const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 size_t FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 

__attribute__((used)) static void FUNC25(intf_thread_t *intf, char const *psz_cmd,
                  vlc_value_t newval)
{
    vlc_player_t *player = FUNC23(intf->p_sys->playlist);

    FUNC14(player);
    /* Parse commands that only require an input */
    if( !FUNC3( psz_cmd, "seek" ) )
    {
        if( FUNC4( newval.psz_string ) > 0 &&
            newval.psz_string[FUNC4( newval.psz_string ) - 1] == '%' )
        {
            float f = FUNC0( newval.psz_string ) / 100.0;
            FUNC18(player, f);
        }
        else
        {
            int t = FUNC1( newval.psz_string );
            FUNC20(player, FUNC24(t));
        }
    }
    else if( !FUNC3( psz_cmd, "chapter" ) )
    {
            if ( *newval.psz_string )
            {
                /* Set. */
                FUNC15(player, FUNC1(newval.psz_string));
            }
            else
            {
                /* Get. */
                struct vlc_player_title const *title = FUNC7(player);
                ssize_t chapter = -1;
                if (title != NULL)
                    chapter = FUNC6(player);
                if (chapter != -1)
                    FUNC2(intf, "Currently playing chapter %zd/%zu.",
                              chapter, title->chapter_count);
                else
                    FUNC2(intf, "No chapter selected.");
            }
    }
    else if( !FUNC3( psz_cmd, "title" ) )
    {
            if ( *newval.psz_string )
            {
                /* Set. */
                int idx = FUNC1(newval.psz_string);
                if (idx >= 0)
                    FUNC16(player, (size_t)idx);
            }
            else
            {
                /* Get. */
                ssize_t title = FUNC8(player);
                vlc_player_title_list *titles =
                    FUNC10(player);
                size_t count = 0;
                if (titles != NULL)
                    count = FUNC22(titles);
                if (title != -1 && count != 0)
                    FUNC2(intf, "Currently playing title %zd/%zu.", title,
                              count);
                else
                    FUNC2(intf, "No title selected.");
            }
    }
    else if(    !FUNC3( psz_cmd, "atrack" )
             || !FUNC3( psz_cmd, "vtrack" )
             || !FUNC3( psz_cmd, "strack" ) )
    {
        enum es_format_category_e cat;
        if( !FUNC3( psz_cmd, "atrack" ) )
            cat = AUDIO_ES;
        else if( !FUNC3( psz_cmd, "vtrack" ) )
            cat = VIDEO_ES;
        else
            cat = SPU_ES;
        if( newval.psz_string && *newval.psz_string )
        {
            int idx = FUNC1(newval.psz_string);
            if (idx < 0)
                goto out;
            size_t track_count = FUNC12(player, cat);
            if ((unsigned)idx >= track_count)
                goto out;
            struct vlc_player_track const *track =
                FUNC11(player, cat, (size_t)idx);
            if (!track)
                goto out;
            FUNC17(player, track, VLC_PLAYER_SELECT_EXCLUSIVE);
        }
        else
        {
            struct vlc_player_track const *cur_track =
                FUNC9(player, cat);
            char const *name = cur_track ? cur_track->name : psz_cmd;
            FUNC2(intf, "+----[ %s ]", name);
            size_t count = FUNC12(player, cat);
            for (size_t i = 0; i < count; ++i)
            {
                struct vlc_player_track const *track =
                    FUNC11(player, cat, i);
                FUNC2(intf, "| %zu - %s%s",
                          i, track->name, track == cur_track ? " *" : "");
            }
            FUNC2(intf, "+----[ end of %s ]", name);
        }
    }
    else if( !FUNC3( psz_cmd, "record" ) )
    {
        bool b_update = true;
        bool b_value = FUNC13(player);

        if( newval.psz_string[0] != '\0' )
        {
            if ( ( !FUNC5( newval.psz_string, "on", 2 )  &&  b_value ) ||
                 ( !FUNC5( newval.psz_string, "off", 3 ) && !b_value ) )
            {
                b_update = false;
            }
        }
        if( b_update )
        {
            b_value = !b_value;
            FUNC19( player, b_value );
        }
    }
out:
    FUNC21(player);
}