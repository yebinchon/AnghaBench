#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vlc_memstream {char* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_memstream*,char*,char*) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,char*) ; 
 char FUNC4 (char) ; 
 scalar_t__ FUNC5 (struct vlc_memstream*) ; 
 scalar_t__ FUNC6 (struct vlc_memstream*) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_memstream*,char) ; 

__attribute__((used)) static char* FUNC8( char* psz_source )
{
    bool b_in_string= false;
    char *psz_source_cur = psz_source;
    char *psz_source_old = psz_source;
    char c_string_delim;

    struct vlc_memstream stream_out;
    if( FUNC6( &stream_out ) != 0 )
        return NULL;

    while ( psz_source_cur != NULL && *psz_source_cur != '\0' )
    {
        psz_source_old = psz_source_cur;
        //search tag start
        if( ( psz_source_cur = FUNC1( psz_source_cur, '<' ) ) == NULL )
        {
            FUNC0(&stream_out, psz_source_old, NULL);
            //vlc_memstream_puts( &stream_out, psz_source_old );
            break;
        }

        FUNC0(&stream_out, psz_source_old, psz_source_cur);
        psz_source_old = psz_source_cur;

        //skip if comment, no need to copy them to the ouput.
        if( FUNC2( psz_source_cur, "<!--", 4 ) == 0 )
        {
            psz_source_cur += 4;
            psz_source_cur =  FUNC3( psz_source_cur, "-->" );
            if( psz_source_cur == NULL)
                break;
            else
            {
                psz_source_cur += 3;
                continue;
            }
        }
        else
        {
            FUNC7( &stream_out, '<' );
            psz_source_cur++;
        }

        for (  ; *psz_source_cur != '\0'; psz_source_cur++ )
        {
            if( b_in_string == false )
            {
                if( *psz_source_cur == '>')
                {
                    FUNC7( &stream_out, '>' );
                    psz_source_cur++;
                    break;
                }
                if( *psz_source_cur == '"' || *psz_source_cur == '\'' )
                {
                    c_string_delim = *psz_source_cur;
                    b_in_string = true;
                    FUNC7( &stream_out, c_string_delim );
                }
                else
                {
                    //convert tag and attributes to upper case
                    FUNC7( &stream_out, FUNC4( *psz_source_cur ) );
                }
            }
            else
            {
                psz_source_old = psz_source_cur;
                psz_source_cur = FUNC1( psz_source_cur, c_string_delim );
                if( psz_source_cur == NULL )
                    break;

                FUNC0(&stream_out, psz_source_old, psz_source_cur);
                FUNC7( &stream_out, c_string_delim );
                b_in_string = false;
            }
        }
    }
    if( FUNC5( &stream_out ) != 0 )
        return NULL;

    return stream_out.ptr;
}