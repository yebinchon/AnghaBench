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
struct vlc_memstream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_memstream*,char*) ; 
 char* FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct vlc_memstream* p_stream, const char* psz_begin, const char* psz_end)
{
    char *psz_tmp = NULL;
    if(psz_end == NULL)
        psz_tmp = FUNC2( psz_begin );
    else
        psz_tmp = FUNC3( psz_begin, psz_end - psz_begin );

    if ( psz_tmp == NULL )
        return;

    if( FUNC1( psz_tmp ) )
        FUNC4( p_stream, psz_tmp );
    else
    {
        char *psz_tmp_encoded = FUNC5( psz_tmp );
        if ( !psz_tmp_encoded )
        {
            FUNC0( psz_tmp );
            return;
        }
        FUNC4( p_stream, psz_tmp_encoded );
        FUNC0( psz_tmp_encoded );
    }
    FUNC0(psz_tmp);
}