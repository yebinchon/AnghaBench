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

/* Variables and functions */
 char* FUNC0 (int) ; 
 int FUNC1 (char const*) ; 
 char FUNC2 (char const) ; 
 scalar_t__ FUNC3 (int) ; 

char* FUNC4( const char *psz_src )
{
    int i_size = FUNC1( psz_src ) + 1;
    char *psz_buffer = FUNC0( i_size );
    if( FUNC3( !psz_buffer ) )
        return NULL;

    for( int i = 0; i < i_size; ++i )
        psz_buffer[ i ] = FUNC2( psz_src[ i ] );

    return psz_buffer;
}