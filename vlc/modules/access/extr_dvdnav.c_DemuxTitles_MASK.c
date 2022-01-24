#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_10__ {int i_flags; int /*<<< orphan*/  seekpoint; int /*<<< orphan*/  i_seekpoint; void* i_time_offset; void* i_length; void* psz_name; } ;
typedef  TYPE_1__ seekpoint_t ;
typedef  int int32_t ;
typedef  TYPE_1__ input_title_t ;
struct TYPE_11__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_12__ {int /*<<< orphan*/  title; int /*<<< orphan*/  i_title; int /*<<< orphan*/  dvdnav; } ;
typedef  TYPE_4__ demux_sys_t ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int INPUT_TITLE_INTERACTIVE ; 
 int INPUT_TITLE_MENU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,scalar_t__**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 void* FUNC7 (char*) ; 
 TYPE_1__* FUNC8 () ; 
 TYPE_1__* FUNC9 () ; 

__attribute__((used)) static void FUNC10( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    input_title_t *t;
    seekpoint_t *s;
    int32_t i_titles;

    /* Menu */
    t = FUNC8();
    t->i_flags = INPUT_TITLE_MENU | INPUT_TITLE_INTERACTIVE;
    t->psz_name = FUNC7( "DVD Menu" );

    s = FUNC9();
    s->psz_name = FUNC7( "Resume" );
    FUNC1( t->i_seekpoint, t->seekpoint, s );

    s = FUNC9();
    s->psz_name = FUNC7( "Root" );
    FUNC1( t->i_seekpoint, t->seekpoint, s );

    s = FUNC9();
    s->psz_name = FUNC7( "Title" );
    FUNC1( t->i_seekpoint, t->seekpoint, s );

    s = FUNC9();
    s->psz_name = FUNC7( "Chapter" );
    FUNC1( t->i_seekpoint, t->seekpoint, s );

    s = FUNC9();
    s->psz_name = FUNC7( "Subtitle" );
    FUNC1( t->i_seekpoint, t->seekpoint, s );

    s = FUNC9();
    s->psz_name = FUNC7( "Audio" );
    FUNC1( t->i_seekpoint, t->seekpoint, s );

    s = FUNC9();
    s->psz_name = FUNC7( "Angle" );
    FUNC1( t->i_seekpoint, t->seekpoint, s );

    FUNC1( p_sys->i_title, p_sys->title, t );

    /* Find out number of titles/chapters */
    FUNC4( p_sys->dvdnav, &i_titles );

    if( i_titles > 90 )
        FUNC6( p_demux, "This is probably an Arccos Protected DVD. This could take time..." );

    for( int i = 1; i <= i_titles; i++ )
    {
        uint64_t i_title_length;
        uint64_t *p_chapters_time;

        int32_t i_chapters = FUNC3( p_sys->dvdnav, i,
                                                            &p_chapters_time,
                                                            &i_title_length );
        if( i_chapters < 1 )
        {
            i_title_length = 0;
            p_chapters_time = NULL;
        }
        t = FUNC8();
        t->i_length = FUNC0(i_title_length);
        for( int j = 0; j < FUNC2( i_chapters, 1 ); j++ )
        {
            s = FUNC9();
            if( p_chapters_time )
            {
                if ( j > 0 )
                    s->i_time_offset = FUNC0(p_chapters_time[j - 1]);
                else
                    s->i_time_offset = 0;
            }
            FUNC1( t->i_seekpoint, t->seekpoint, s );
        }
        FUNC5( p_chapters_time );
        FUNC1( p_sys->i_title, p_sys->title, t );
    }
}