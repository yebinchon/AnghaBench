
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
struct stat {int st_size; } ;
struct TYPE_13__ {TYPE_4__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_14__ {int i_time_offset; void* psz_name; } ;
typedef TYPE_2__ seekpoint_t ;
typedef int int64_t ;
struct TYPE_15__ {int i_length; int i_seekpoint; int seekpoint; void* psz_name; } ;
typedef TYPE_3__ input_title_t ;
struct TYPE_16__ {int fps; scalar_t__* offsets; TYPE_3__* p_marks; int b_ts_format; } ;
typedef TYPE_4__ access_sys_t ;
typedef int FILE ;


 int CLOCK_FREQ ;
 int FILE_COUNT ;
 scalar_t__ FILE_SIZE (int) ;
 int MIN_CHAPTER_SIZE ;
 int * OpenRelativeFile (TYPE_1__*,char*) ;
 int ParseFrameNumber (char*,int) ;
 int ReadIndexRecord (int *,int ,int,scalar_t__*,int*) ;
 scalar_t__ ReadLine (char**,size_t*,int *) ;
 int TAB_APPEND (int,int ,TYPE_2__*) ;
 int TAB_INSERT (int,int ,TYPE_2__*,int ) ;
 char* _ (char*) ;
 int fclose (int *) ;
 int fileno (int *) ;
 int free (scalar_t__*) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 void* strdup (char*) ;
 int var_InheritInteger (TYPE_1__*,char*) ;
 int vlc_input_title_Delete (TYPE_3__*) ;
 TYPE_3__* vlc_input_title_New () ;
 TYPE_2__* vlc_seekpoint_New () ;
 scalar_t__* xrealloc (scalar_t__*,int) ;

__attribute__((used)) static void ImportMarks( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    FILE *marksfile = OpenRelativeFile( p_access, "marks" );
    if( !marksfile )
        return;

    FILE *indexfile = OpenRelativeFile( p_access, "index" );
    if( !indexfile )
    {
        fclose( marksfile );
        return;
    }


    struct stat st;
    if( fstat( fileno( indexfile ), &st ) )
    {
        fclose( marksfile );
        fclose( indexfile );
        return;
    }
    int64_t i_frame_count = st.st_size / 8;


    input_title_t *p_marks = vlc_input_title_New();
    if( !p_marks )
    {
        fclose( marksfile );
        fclose( indexfile );
        return;
    }
    p_marks->psz_name = strdup( _("VDR Cut Marks") );
    p_marks->i_length = i_frame_count * (vlc_tick_t)( CLOCK_FREQ / p_sys->fps );

    uint64_t *offsetv = ((void*)0);


    int i_chapter_offset = p_sys->fps / 1000 *
        var_InheritInteger( p_access, "vdr-chapter-offset" );


    int i_min_chapter_size = p_sys->fps * MIN_CHAPTER_SIZE;



    int64_t i_prev_chapter = 0;


    char *line = ((void*)0);
    size_t line_len;
    while( ReadLine( &line, &line_len, marksfile ) )
    {
        int64_t i_frame = ParseFrameNumber( line, p_sys->fps );


        if( i_frame - i_prev_chapter < i_min_chapter_size ||
            i_frame >= i_frame_count - i_min_chapter_size )
            continue;
        i_prev_chapter = i_frame;


        if( i_frame > -i_chapter_offset )
            i_frame += i_chapter_offset;
        else
            i_frame = 0;

        uint64_t i_offset;
        uint16_t i_file_number;
        if( !ReadIndexRecord( indexfile, p_sys->b_ts_format,
            i_frame, &i_offset, &i_file_number ) )
            continue;
        if( i_file_number < 1 || i_file_number > FILE_COUNT )
            continue;


        seekpoint_t *sp = vlc_seekpoint_New();
        if( !sp )
            continue;
        sp->i_time_offset = i_frame * (vlc_tick_t)( CLOCK_FREQ / p_sys->fps );
        sp->psz_name = strdup( line );

        TAB_APPEND( p_marks->i_seekpoint, p_marks->seekpoint, sp );
        offsetv = xrealloc(offsetv, p_marks->i_seekpoint * sizeof (*offsetv));

        for( int i = 0; i + 1 < i_file_number; ++i )
            i_offset += FILE_SIZE(i);

        offsetv[p_marks->i_seekpoint - 1] = i_offset;
    }


    if( p_marks->i_seekpoint > 0 && offsetv[0] > 0 )
    {
        seekpoint_t *sp = vlc_seekpoint_New();
        if( sp )
        {
            sp->i_time_offset = 0;
            sp->psz_name = strdup( _("Start") );
            TAB_INSERT( p_marks->i_seekpoint, p_marks->seekpoint, sp, 0 );
            offsetv = xrealloc(offsetv,
                               p_marks->i_seekpoint * sizeof (*offsetv));
            memmove(offsetv + 1, offsetv,
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
        vlc_input_title_Delete( p_marks );
        free(offsetv);
    }

    fclose( marksfile );
    fclose( indexfile );
}
