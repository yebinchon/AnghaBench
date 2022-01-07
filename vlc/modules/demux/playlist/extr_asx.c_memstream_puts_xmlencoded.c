
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {int dummy; } ;


 int free (char*) ;
 scalar_t__ isXmlEncoded (char*) ;
 char* strdup (char const*) ;
 char* strndup (char const*,int) ;
 int vlc_memstream_puts (struct vlc_memstream*,char*) ;
 char* vlc_xml_encode (char*) ;

__attribute__((used)) static void memstream_puts_xmlencoded(struct vlc_memstream* p_stream, const char* psz_begin, const char* psz_end)
{
    char *psz_tmp = ((void*)0);
    if(psz_end == ((void*)0))
        psz_tmp = strdup( psz_begin );
    else
        psz_tmp = strndup( psz_begin, psz_end - psz_begin );

    if ( psz_tmp == ((void*)0) )
        return;

    if( isXmlEncoded( psz_tmp ) )
        vlc_memstream_puts( p_stream, psz_tmp );
    else
    {
        char *psz_tmp_encoded = vlc_xml_encode( psz_tmp );
        if ( !psz_tmp_encoded )
        {
            free( psz_tmp );
            return;
        }
        vlc_memstream_puts( p_stream, psz_tmp_encoded );
        free( psz_tmp_encoded );
    }
    free(psz_tmp);
}
