
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {int * stream; } ;


 int vlc_memstream_putc (struct vlc_memstream*,char) ;
 int vlc_memstream_puts (struct vlc_memstream*,char const*) ;

__attribute__((used)) static void memstream_Append( struct vlc_memstream *ms, const char *psz )
{
    if( ms->stream != ((void*)0) )
    {
        vlc_memstream_puts( ms, psz );
        vlc_memstream_putc( ms, '\n' );
    }
}
