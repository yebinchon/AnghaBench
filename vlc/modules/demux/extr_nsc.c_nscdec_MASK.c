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
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 char* FUNC0 (char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char,unsigned char*,char**,unsigned char*,unsigned char*) ; 
 unsigned char* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static char *FUNC6( vlc_object_t *p_demux, char* p_encoded )
{
    unsigned int i;
    unsigned char tmp;
    unsigned char j, k;
    unsigned int length;
    unsigned char encoding_type;

    unsigned char *buf16;
    char *buf8;

    char *p_input = p_encoded;

    if( FUNC5( p_input ) < 15 )
    {
        FUNC4( p_demux, "input string less than 15 characters" );
        return NULL;
    }

    if( FUNC2( 1, &encoding_type, &p_input, NULL, NULL ) )
    {
        FUNC4( p_demux, "unable to get NSC encoding type" );
        return NULL;
    }

    if( encoding_type != 1 && encoding_type != 2 )
    {
        FUNC4( p_demux, "encoding type %d is not supported",
                 encoding_type );
        return NULL;
    }

    j = k = 0;

    if( FUNC2( encoding_type, &tmp, &p_input, &j, &k ) )
    {
        FUNC4( p_demux, "load_byte failed" );
        return NULL;
    }

    for( i = 0; i < 4; i++ )
    {
        if( FUNC2( encoding_type, &tmp, &p_input, &j, &k ) )
        {
            FUNC4( p_demux, "load_byte failed" );
            return NULL;
        }
    }

    length = 0;
    for( i = 4; i; i-- )
    {
        if( FUNC2( encoding_type, &tmp, &p_input, &j, &k ) )
        {
            FUNC4( p_demux, "load_byte failed" );
            return NULL;
        }
        length |= (unsigned int)tmp << ((i - 1) * 8);
    }

    if( length == 0 )
    {
        FUNC4( p_demux, "Length is 0" );
        return NULL;
    }

    buf16 = FUNC3( length );
    if( buf16 == NULL )
        return NULL;

    for( i = 0; i < length; i++ )
    {
        if( FUNC2( encoding_type, &buf16[ i ], &p_input, &j, &k ) )
        {
            FUNC4( p_demux, "load_byte failed" );
            FUNC1( buf16 );
            return NULL;
        }
    }

    buf8 = FUNC0( "UTF-16LE", buf16, length );
    FUNC1( buf16 );
    if( buf8 == NULL )
    {
        FUNC4( p_demux, "iconv failed" );
        return NULL;
    }
    return buf8;
}