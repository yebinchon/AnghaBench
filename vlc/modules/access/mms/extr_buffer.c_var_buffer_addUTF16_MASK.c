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
typedef  int /*<<< orphan*/  var_buffer_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4( stream_t  *p_access, var_buffer_t *p_buf, const char *p_str )
{
    uint16_t *p_out;
    size_t i_out;

    if( p_str != NULL )
#ifdef WORDS_BIGENDIAN
        p_out = ToCharset( "UTF-16BE", p_str, &i_out );
#else
        p_out = FUNC0( "UTF-16LE", p_str, &i_out );
#endif
    else
        p_out = NULL;
    if( p_out == NULL )
    {
        FUNC2( p_access, "UTF-16 conversion failed" );
        i_out = 0;
    }

    i_out /= 2;
    for( size_t i = 0; i < i_out; i ++ )
        FUNC3( p_buf, p_out[i] );
    FUNC1( p_out );

    FUNC3( p_buf, 0 );
}