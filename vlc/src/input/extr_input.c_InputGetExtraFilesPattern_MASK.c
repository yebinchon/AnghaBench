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
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  input_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 scalar_t__ FUNC3 (char**,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC8 (char const*) ; 
 size_t FUNC9 (char const*) ; 
 char* FUNC10 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char*,struct stat*) ; 

__attribute__((used)) static void FUNC12( input_thread_t *p_input,
                                       int *pi_list, char ***pppsz_list,
                                       const char *psz_path,
                                       const char *psz_match,
                                       const char *psz_format,
                                       int i_start, int i_stop )
{
    int i_list;
    char **ppsz_list;
    FUNC2( i_list, ppsz_list );

    char *psz_base = FUNC8( psz_path );
    if( !psz_base )
        goto exit;

    /* Remove the extension */
    char *psz_end = &psz_base[FUNC9(psz_base)-FUNC9(psz_match)];
    FUNC4( psz_end >= psz_base);
    *psz_end = '\0';

    /* Try to list files */
    for( int i = i_start; i <= i_stop; i++ )
    {
        char *psz_probe;
        if( FUNC3( &psz_probe, psz_format, psz_base, i ) < 0 )
            break;

        char *filepath = FUNC6( psz_probe );

        struct stat st;
        if( filepath == NULL ||
            FUNC11( filepath, &st ) || !FUNC0( st.st_mode ) || !st.st_size )
        {
            FUNC5( filepath );
            FUNC5( psz_probe );
            break;
        }

        FUNC7( p_input, "Detected extra file `%s'", filepath );

        char* psz_uri = FUNC10( filepath, NULL );
        if( psz_uri )
            FUNC1( i_list, ppsz_list, psz_uri );

        FUNC5( filepath );
        FUNC5( psz_probe );
    }
    FUNC5( psz_base );
exit:
    *pi_list = i_list;
    *pppsz_list = ppsz_list;
}