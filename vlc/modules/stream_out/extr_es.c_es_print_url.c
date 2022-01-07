
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
struct vlc_memstream {char* ptr; } ;


 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 scalar_t__ vlc_memstream_open (struct vlc_memstream*) ;
 int vlc_memstream_printf (struct vlc_memstream*,char*,...) ;
 int vlc_memstream_putc (struct vlc_memstream*,char) ;
 int vlc_memstream_puts (struct vlc_memstream*,char const*) ;

__attribute__((used)) static char * es_print_url( const char *psz_fmt, vlc_fourcc_t i_fourcc, int i_count,
                            const char *psz_access, const char *psz_mux )
{
    struct vlc_memstream stream;
    unsigned char c;

    if (vlc_memstream_open(&stream))
        return ((void*)0);

    if( psz_fmt == ((void*)0) || !*psz_fmt )
        psz_fmt = "stream-%n-%c.%m";

    while ((c = *(psz_fmt++)) != '\0')
    {
        if (c != '%')
        {
            vlc_memstream_putc(&stream, c);
            continue;
        }

        switch (c = *(psz_fmt++))
        {
            case 'n':
                vlc_memstream_printf(&stream, "%d", i_count);
                break;
            case 'c':
                vlc_memstream_printf(&stream, "%4.4s", (char *)&i_fourcc);
                break;
            case 'm':
                vlc_memstream_puts(&stream, psz_mux);
                break;
            case 'a':
                vlc_memstream_puts(&stream, psz_access);
                break;
            case '\0':
                vlc_memstream_putc(&stream, '%');
                goto out;
            default:
                vlc_memstream_printf(&stream, "%%%c", (int) c);
                break;
        }
    }
out:
    if (vlc_memstream_close(&stream))
        return ((void*)0);
    return stream.ptr;
}
