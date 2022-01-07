
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int s; } ;
typedef TYPE_1__ stream_t ;


 char* FromCharset (char*,int const*,int) ;
 int free (char*) ;
 int memcmp (int const*,char*,int) ;
 char* strndup (char const*,int) ;
 int * strstr (char*,char*) ;
 int vlc_stream_Peek (int ,int const**,int) ;

__attribute__((used)) static bool isHDS( stream_t *s )
{
    const uint8_t *peek;
    int i_size = vlc_stream_Peek( s->s, &peek, 200 );
    if( i_size < 200 )
        return 0;

    char *str;

    if( !memcmp( peek, "\xFF\xFE", 2 ) )
    {
        str = FromCharset( "UTF-16LE", peek, i_size );
    }
    else if( !memcmp( peek, "\xFE\xFF", 2 ) )
    {
        str = FromCharset( "UTF-16BE", peek, i_size );
    }
    else
        str = strndup( (const char *)peek, i_size );

    if( str == ((void*)0) )
        return 0;

    bool ret = strstr( str, "<manifest" ) != ((void*)0);
    free( str );
    return ret;
}
