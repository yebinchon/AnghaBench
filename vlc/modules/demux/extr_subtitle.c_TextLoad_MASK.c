#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t i_line_count; char** line; scalar_t__ i_line; } ;
typedef  TYPE_1__ text_t ;
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 char** FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (char**,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4( text_t *txt, stream_t *s )
{
    size_t i_line_max;

    /* init txt */
    i_line_max          = 500;
    txt->i_line_count   = 0;
    txt->i_line         = 0;
    txt->line           = FUNC0( i_line_max, sizeof( char * ) );
    if( !txt->line )
        return VLC_ENOMEM;

    /* load the complete file */
    for( ;; )
    {
        char *psz = FUNC3( s );

        if( psz == NULL )
            break;

        txt->line[txt->i_line_count] = psz;
        if( txt->i_line_count + 1 >= i_line_max )
        {
            i_line_max += 100;
            char **p_realloc = FUNC2( txt->line, i_line_max * sizeof( char * ) );
            if( p_realloc == NULL )
                return VLC_ENOMEM;
            txt->line = p_realloc;
        }
        txt->i_line_count++;
    }

    if( txt->i_line_count == 0 )
    {
        FUNC1( txt->line );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}