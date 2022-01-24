#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int vlc_tick_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint16_t ;
struct stat {int st_size; } ;
struct TYPE_13__ {TYPE_4__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_14__ {int i_time_offset; void* psz_name; } ;
typedef  TYPE_2__ seekpoint_t ;
typedef  int int64_t ;
struct TYPE_15__ {int i_length; int i_seekpoint; int /*<<< orphan*/  seekpoint; void* psz_name; } ;
typedef  TYPE_3__ input_title_t ;
struct TYPE_16__ {int fps; scalar_t__* offsets; TYPE_3__* p_marks; int /*<<< orphan*/  b_ts_format; } ;
typedef  TYPE_4__ access_sys_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CLOCK_FREQ ; 
 int FILE_COUNT ; 
 scalar_t__ FUNC0 (int) ; 
 int MIN_CHAPTER_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__*,int*) ; 
 scalar_t__ FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,scalar_t__*,int) ; 
 void* FUNC13 (char*) ; 
 int FUNC14 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 TYPE_3__* FUNC16 () ; 
 TYPE_2__* FUNC17 () ; 
 scalar_t__* FUNC18 (scalar_t__*,int) ; 

__attribute__((used)) static void FUNC19( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    FILE *marksfile = FUNC1( p_access, "marks" );
    if( !marksfile )
        return;

    FILE *indexfile = FUNC1( p_access, "index" );
    if( !indexfile )
    {
        FUNC8( marksfile );
        return;
    }

    /* get the length of this recording (index stores 8 bytes per frame) */
    struct stat st;
    if( FUNC11( FUNC9( indexfile ), &st ) )
    {
        FUNC8( marksfile );
        FUNC8( indexfile );
        return;
    }
    int64_t i_frame_count = st.st_size / 8;

    /* Put all cut marks in a "dummy" title */
    input_title_t *p_marks = FUNC16();
    if( !p_marks )
    {
        FUNC8( marksfile );
        FUNC8( indexfile );
        return;
    }
    p_marks->psz_name = FUNC13( FUNC7("VDR Cut Marks") );
    p_marks->i_length = i_frame_count * (vlc_tick_t)( CLOCK_FREQ / p_sys->fps );

    uint64_t *offsetv = NULL;

    /* offset for chapter positions */
    int i_chapter_offset = p_sys->fps / 1000 *
        FUNC14( p_access, "vdr-chapter-offset" );

    /* minimum chapter size in frames */
    int i_min_chapter_size = p_sys->fps * MIN_CHAPTER_SIZE;

    /* the last chapter started at this frame (init to 0 so
     * we skip useless chapters near the beginning as well) */
    int64_t i_prev_chapter = 0;

    /* parse lines of the form "0:00:00.00 foobar" */
    char *line = NULL;
    size_t line_len;
    while( FUNC4( &line, &line_len, marksfile ) )
    {
        int64_t i_frame = FUNC2( line, p_sys->fps );

        /* skip chapters which are near the end or too close to each other */
        if( i_frame - i_prev_chapter < i_min_chapter_size ||
            i_frame >= i_frame_count - i_min_chapter_size )
            continue;
        i_prev_chapter = i_frame;

        /* move chapters (simple workaround for inaccurate cut marks) */
        if( i_frame > -i_chapter_offset )
            i_frame += i_chapter_offset;
        else
            i_frame = 0;

        uint64_t i_offset;
        uint16_t i_file_number;
        if( !FUNC3( indexfile, p_sys->b_ts_format,
            i_frame, &i_offset, &i_file_number ) )
            continue;
        if( i_file_number < 1 || i_file_number > FILE_COUNT )
            continue;

        /* add file sizes to get the "global" offset */
        seekpoint_t *sp = FUNC17();
        if( !sp )
            continue;
        sp->i_time_offset = i_frame * (vlc_tick_t)( CLOCK_FREQ / p_sys->fps );
        sp->psz_name = FUNC13( line );

        FUNC5( p_marks->i_seekpoint, p_marks->seekpoint, sp );
        offsetv = FUNC18(offsetv, p_marks->i_seekpoint * sizeof (*offsetv));

        for( int i = 0; i + 1 < i_file_number; ++i )
            i_offset += FUNC0(i);

        offsetv[p_marks->i_seekpoint - 1] = i_offset;
    }

    /* add a chapter at the beginning if missing */
    if( p_marks->i_seekpoint > 0 && offsetv[0] > 0 )
    {
        seekpoint_t *sp = FUNC17();
        if( sp )
        {
            sp->i_time_offset = 0;
            sp->psz_name = FUNC13( FUNC7("Start") );
            FUNC6( p_marks->i_seekpoint, p_marks->seekpoint, sp, 0 );
            offsetv = FUNC18(offsetv,
                               p_marks->i_seekpoint * sizeof (*offsetv));
            FUNC12(offsetv + 1, offsetv,
                    (p_marks->i_seekpoint - 1) * sizeof (*offsetv));
            offsetv[0] = 0;
        }
    }

    if( p_marks->i_seekpoint > 0 )
    {
        p_sys->p_marks = p_marks;
        p_sys->offsets = offsetv;
    }
    else
    {
        FUNC15( p_marks );
        FUNC10(offsetv);
    }

    FUNC8( marksfile );
    FUNC8( indexfile );
}