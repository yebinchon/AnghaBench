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
typedef  int /*<<< orphan*/  vlc_meta_t ;
typedef  int /*<<< orphan*/  seekpoint_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*,int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ ***,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static void FUNC5( unsigned *pi_flags, vlc_meta_t *p_meta,
                                const char *p_data, int i_data,
                                int *pi_seekpoint, seekpoint_t ***ppp_seekpoint )
{
    seekpoint_t *p_seekpoint = NULL;
    bool b_valid = false;

    const char *p_head = p_data;
    const char *p_tail = p_head;
    while( p_tail < p_data + i_data )
    {
        if( *p_tail == 0x0D )
        {
            char *psz = FUNC2( p_head, p_tail - p_head );
            if( psz )
            {
                FUNC4( pi_flags, p_meta, psz,
                                        pi_seekpoint, ppp_seekpoint,
                                        &p_seekpoint, &b_valid );
                FUNC1( psz );
            }
            if( *(++p_tail) == 0x0A )
                p_tail++;
            p_head = p_tail;
        }
        else
        {
            p_tail++;
        }
    }


    if( p_seekpoint )
    {
        if( b_valid )
            FUNC0( *pi_seekpoint, *ppp_seekpoint, p_seekpoint );
        else
            FUNC3( p_seekpoint );
    }
}