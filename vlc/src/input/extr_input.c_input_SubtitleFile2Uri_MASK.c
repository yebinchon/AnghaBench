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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  input_thread_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char const*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char const*,char) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct stat*) ; 

__attribute__((used)) static char *FUNC9( input_thread_t *p_input,
                                     const char *psz_subtitle )
{
    /* if we are provided a subtitle.sub file,
     * see if we don't have a subtitle.idx and use it instead */
    char *psz_idxpath = NULL;
    char *psz_extension = FUNC6( psz_subtitle, '.');
    if( psz_extension && FUNC3( psz_extension, ".sub" ) == 0 )
    {
        psz_idxpath = FUNC5( psz_subtitle );
        if( psz_idxpath )
        {
            struct stat st;

            psz_extension = psz_extension - psz_subtitle + psz_idxpath;
            FUNC4( psz_extension, ".idx" );

            if( !FUNC8( psz_idxpath, &st ) && FUNC0( st.st_mode ) )
            {
                FUNC2( p_input, "using %s as subtitle file instead of %s",
                         psz_idxpath, psz_subtitle );
                psz_subtitle = psz_idxpath;
            }
        }
    }

    char *psz_uri = FUNC7( psz_subtitle, NULL );
    FUNC1( psz_idxpath );
    return psz_uri;
}