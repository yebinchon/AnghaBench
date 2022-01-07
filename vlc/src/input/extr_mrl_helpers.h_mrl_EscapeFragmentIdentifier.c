
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {char* ptr; } ;


 char* RFC3986_FRAGMENT ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int * strchr (char*,char const) ;
 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 scalar_t__ vlc_memstream_open (struct vlc_memstream*) ;
 int vlc_memstream_printf (struct vlc_memstream*,char*,char const) ;

__attribute__((used)) static inline int
mrl_EscapeFragmentIdentifier( char** out, char const* payload )
{
    struct vlc_memstream mstream;
    if( vlc_memstream_open( &mstream ) )
        return VLC_EGENERIC;

    for( char const* p = payload; *p; ++p )
    {
        vlc_memstream_printf( &mstream,
            ( strchr( "!?", *p ) == ((void*)0) &&
              strchr( "abcdefghijklmnopqrstuvwxyz" "ABCDEFGHIJKLMNOPQRSTUVWXYZ" "0123456789" "-" "." "_" "~" "!" "$" "&" "'" "(" ")" "*" "+" "," ";" "=" ":" "@" "/" "?", *p ) ? "%c" : "%%%02hhx"), *p );
    }
    if( vlc_memstream_close( &mstream ) )
        return VLC_EGENERIC;

    *out = mstream.ptr;
    return VLC_SUCCESS;
}
