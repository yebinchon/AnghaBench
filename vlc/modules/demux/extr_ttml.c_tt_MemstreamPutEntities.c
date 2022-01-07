
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {int dummy; } ;


 int free (char*) ;
 int vlc_memstream_puts (struct vlc_memstream*,char*) ;
 char* vlc_xml_encode (char const*) ;

__attribute__((used)) static void tt_MemstreamPutEntities( struct vlc_memstream *p_stream, const char *psz )
{
    char *psz_entities = vlc_xml_encode( psz );
    if( psz_entities )
    {
        vlc_memstream_puts( p_stream, psz_entities );
        free( psz_entities );
    }
}
