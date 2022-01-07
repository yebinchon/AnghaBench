
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_protocol; char* psz_path; char* psz_option; char* psz_fragment; int i_port; int * psz_host; int * psz_password; int * psz_username; } ;
typedef TYPE_1__ vlc_url_t ;
struct vlc_memstream {char* ptr; } ;


 int free (char*) ;
 int * strchr (int *,char) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 int vlc_memstream_open (struct vlc_memstream*) ;
 int vlc_memstream_printf (struct vlc_memstream*,char const*,char*,...) ;
 int vlc_memstream_putc (struct vlc_memstream*,char) ;
 int vlc_memstream_puts (struct vlc_memstream*,char*) ;
 int vlc_memstream_write (struct vlc_memstream*,char*,int) ;
 char* vlc_uri_encode (int *) ;

char *vlc_uri_compose(const vlc_url_t *uri)
{
    struct vlc_memstream stream;
    char *enc;

    vlc_memstream_open(&stream);

    if (uri->psz_protocol != ((void*)0))
        vlc_memstream_printf(&stream, "%s:", uri->psz_protocol);

    if (uri->psz_host != ((void*)0))
    {
        vlc_memstream_write(&stream, "//", 2);

        if (uri->psz_username != ((void*)0))
        {
            enc = vlc_uri_encode(uri->psz_username);
            if (enc == ((void*)0))
                goto error;

            vlc_memstream_puts(&stream, enc);
            free(enc);

            if (uri->psz_password != ((void*)0))
            {
                enc = vlc_uri_encode(uri->psz_password);
                if (unlikely(enc == ((void*)0)))
                    goto error;

                vlc_memstream_printf(&stream, ":%s", enc);
                free(enc);
            }
            vlc_memstream_putc(&stream, '@');
        }

        const char *fmt;

        if (strchr(uri->psz_host, ':') != ((void*)0))
            fmt = (uri->i_port != 0) ? "[%s]:%d" : "[%s]";
        else
            fmt = (uri->i_port != 0) ? "%s:%d" : "%s";

        vlc_memstream_printf(&stream, fmt, uri->psz_host, uri->i_port);
    }

    if (uri->psz_path != ((void*)0))
        vlc_memstream_puts(&stream, uri->psz_path);
    if (uri->psz_option != ((void*)0))
        vlc_memstream_printf(&stream, "?%s", uri->psz_option);
    if (uri->psz_fragment != ((void*)0))
        vlc_memstream_printf(&stream, "#%s", uri->psz_fragment);

    if (vlc_memstream_close(&stream))
        return ((void*)0);
    return stream.ptr;

error:
    if (vlc_memstream_close(&stream) == 0)
        free(stream.ptr);
    return ((void*)0);
}
