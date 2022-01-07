
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {char* ptr; } ;


 int memstream_puts_xmlencoded (struct vlc_memstream*,char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;
 char vlc_ascii_toupper (char) ;
 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 scalar_t__ vlc_memstream_open (struct vlc_memstream*) ;
 int vlc_memstream_putc (struct vlc_memstream*,char) ;

__attribute__((used)) static char* ASXToXML( char* psz_source )
{
    bool b_in_string= 0;
    char *psz_source_cur = psz_source;
    char *psz_source_old = psz_source;
    char c_string_delim;

    struct vlc_memstream stream_out;
    if( vlc_memstream_open( &stream_out ) != 0 )
        return ((void*)0);

    while ( psz_source_cur != ((void*)0) && *psz_source_cur != '\0' )
    {
        psz_source_old = psz_source_cur;

        if( ( psz_source_cur = strchr( psz_source_cur, '<' ) ) == ((void*)0) )
        {
            memstream_puts_xmlencoded(&stream_out, psz_source_old, ((void*)0));

            break;
        }

        memstream_puts_xmlencoded(&stream_out, psz_source_old, psz_source_cur);
        psz_source_old = psz_source_cur;


        if( strncmp( psz_source_cur, "<!--", 4 ) == 0 )
        {
            psz_source_cur += 4;
            psz_source_cur = strstr( psz_source_cur, "-->" );
            if( psz_source_cur == ((void*)0))
                break;
            else
            {
                psz_source_cur += 3;
                continue;
            }
        }
        else
        {
            vlc_memstream_putc( &stream_out, '<' );
            psz_source_cur++;
        }

        for ( ; *psz_source_cur != '\0'; psz_source_cur++ )
        {
            if( b_in_string == 0 )
            {
                if( *psz_source_cur == '>')
                {
                    vlc_memstream_putc( &stream_out, '>' );
                    psz_source_cur++;
                    break;
                }
                if( *psz_source_cur == '"' || *psz_source_cur == '\'' )
                {
                    c_string_delim = *psz_source_cur;
                    b_in_string = 1;
                    vlc_memstream_putc( &stream_out, c_string_delim );
                }
                else
                {

                    vlc_memstream_putc( &stream_out, vlc_ascii_toupper( *psz_source_cur ) );
                }
            }
            else
            {
                psz_source_old = psz_source_cur;
                psz_source_cur = strchr( psz_source_cur, c_string_delim );
                if( psz_source_cur == ((void*)0) )
                    break;

                memstream_puts_xmlencoded(&stream_out, psz_source_old, psz_source_cur);
                vlc_memstream_putc( &stream_out, c_string_delim );
                b_in_string = 0;
            }
        }
    }
    if( vlc_memstream_close( &stream_out ) != 0 )
        return ((void*)0);

    return stream_out.ptr;
}
