
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* psz_password; int * psz_username; } ;
typedef TYPE_2__ vlc_url_t ;
struct vlc_memstream {int dummy; } ;
struct TYPE_5__ {char* psz_path; char* psz_option; int i_port; int psz_host; } ;
struct TYPE_7__ {scalar_t__ b_proxy; TYPE_2__ proxy; TYPE_1__ url; } ;
typedef TYPE_3__ access_sys_t ;


 char* MMSH_USER_AGENT ;
 int asprintf (char**,char*,int *,char const*) ;
 int free (char*) ;
 char* vlc_b64_encode (char*) ;
 int vlc_memstream_open (struct vlc_memstream*) ;
 int vlc_memstream_printf (struct vlc_memstream*,char*,char*,...) ;
 int vlc_memstream_putc (struct vlc_memstream*,char) ;
 int vlc_memstream_puts (struct vlc_memstream*,char*) ;

__attribute__((used)) static void WriteRequestLine( const access_sys_t *sys,
                              struct vlc_memstream *restrict stream )
{
    vlc_memstream_open( stream );

    vlc_memstream_puts( stream, "GET " );
    if( sys->b_proxy )
        vlc_memstream_printf( stream, "http://%s:%d", sys->url.psz_host,
                              sys->url.i_port );
    if( (sys->url.psz_path == ((void*)0)) || (sys->url.psz_path[0] == '\0') )
        vlc_memstream_putc( stream, '/' );
    else
        vlc_memstream_puts( stream, sys->url.psz_path );
    if( sys->url.psz_option != ((void*)0) )
        vlc_memstream_printf( stream, "?%s", sys->url.psz_option );
    vlc_memstream_puts( stream, " HTTP/1.0\r\n" );

    vlc_memstream_printf( stream, "Host: %s:%d\r\n", sys->url.psz_host,
                          sys->url.i_port );


    const vlc_url_t *proxy = &sys->proxy;

    if( sys->b_proxy && proxy->psz_username != ((void*)0) )
    {
        const char *pw = proxy->psz_password ? proxy->psz_password : "";
        char *buf;

        if( asprintf( &buf, "%s:%s", proxy->psz_username, pw ) != -1 )
        {
            char *b64 = vlc_b64_encode( buf );
            free( buf );
            if( b64 != ((void*)0) )
            {
                vlc_memstream_printf( stream, "Proxy-Authorization: "
                                      "Basic %s\r\n", b64 );
                free( b64 );
            }
        }
    }

    vlc_memstream_puts( stream, "Accept: */*\r\n" );
    vlc_memstream_printf( stream, "User-Agent: %s\r\n", MMSH_USER_AGENT );
}
