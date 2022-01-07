
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 char* FromCharset (char*,unsigned char*,unsigned int) ;
 int free (unsigned char*) ;
 scalar_t__ load_byte (unsigned char,unsigned char*,char**,unsigned char*,unsigned char*) ;
 unsigned char* malloc (unsigned int) ;
 int msg_Err (int *,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static char *nscdec( vlc_object_t *p_demux, char* p_encoded )
{
    unsigned int i;
    unsigned char tmp;
    unsigned char j, k;
    unsigned int length;
    unsigned char encoding_type;

    unsigned char *buf16;
    char *buf8;

    char *p_input = p_encoded;

    if( strlen( p_input ) < 15 )
    {
        msg_Err( p_demux, "input string less than 15 characters" );
        return ((void*)0);
    }

    if( load_byte( 1, &encoding_type, &p_input, ((void*)0), ((void*)0) ) )
    {
        msg_Err( p_demux, "unable to get NSC encoding type" );
        return ((void*)0);
    }

    if( encoding_type != 1 && encoding_type != 2 )
    {
        msg_Err( p_demux, "encoding type %d is not supported",
                 encoding_type );
        return ((void*)0);
    }

    j = k = 0;

    if( load_byte( encoding_type, &tmp, &p_input, &j, &k ) )
    {
        msg_Err( p_demux, "load_byte failed" );
        return ((void*)0);
    }

    for( i = 0; i < 4; i++ )
    {
        if( load_byte( encoding_type, &tmp, &p_input, &j, &k ) )
        {
            msg_Err( p_demux, "load_byte failed" );
            return ((void*)0);
        }
    }

    length = 0;
    for( i = 4; i; i-- )
    {
        if( load_byte( encoding_type, &tmp, &p_input, &j, &k ) )
        {
            msg_Err( p_demux, "load_byte failed" );
            return ((void*)0);
        }
        length |= (unsigned int)tmp << ((i - 1) * 8);
    }

    if( length == 0 )
    {
        msg_Err( p_demux, "Length is 0" );
        return ((void*)0);
    }

    buf16 = malloc( length );
    if( buf16 == ((void*)0) )
        return ((void*)0);

    for( i = 0; i < length; i++ )
    {
        if( load_byte( encoding_type, &buf16[ i ], &p_input, &j, &k ) )
        {
            msg_Err( p_demux, "load_byte failed" );
            free( buf16 );
            return ((void*)0);
        }
    }

    buf8 = FromCharset( "UTF-16LE", buf16, length );
    free( buf16 );
    if( buf8 == ((void*)0) )
    {
        msg_Err( p_demux, "iconv failed" );
        return ((void*)0);
    }
    return buf8;
}
