
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {char* ptr; } ;


 int free (char*) ;
 scalar_t__ mrl_EscapeFragmentIdentifier (char**,char const*) ;
 int strstr (char const*,char*) ;
 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 scalar_t__ vlc_memstream_open (struct vlc_memstream*) ;
 int vlc_memstream_printf (struct vlc_memstream*,char*,char*) ;
 int vlc_memstream_putc (struct vlc_memstream*,char) ;
 int vlc_memstream_puts (struct vlc_memstream*,char const*) ;

__attribute__((used)) static char*
StreamExtractorCreateMRL( char const* base, char const* subentry )
{
    struct vlc_memstream buffer;
    char* escaped;

    if( mrl_EscapeFragmentIdentifier( &escaped, subentry ) )
        return ((void*)0);

    if( vlc_memstream_open( &buffer ) )
    {
        free( escaped );
        return ((void*)0);
    }

    vlc_memstream_puts( &buffer, base );

    if( !strstr( base, "#" ) )
        vlc_memstream_putc( &buffer, '#' );

    vlc_memstream_printf( &buffer, "!/%s", escaped );

    free( escaped );
    return vlc_memstream_close( &buffer ) ? ((void*)0) : buffer.ptr;
}
