
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct vlc_memstream {int dummy; } ;


 int vlc_memstream_printf (struct vlc_memstream*,char*,char const*) ;
 int vlc_memstream_puts (struct vlc_memstream*,char*) ;
 int vlc_memstream_vprintf (struct vlc_memstream*,char const*,int ) ;

__attribute__((used)) static void vsdp_AddAttribute(struct vlc_memstream *restrict stream,
                              const char *name, const char *fmt, va_list ap)
{
    if (fmt == ((void*)0))
    {
        vlc_memstream_printf(stream, "a=%s\r\n", name);
        return;
    }
    vlc_memstream_printf(stream, "a=%s:", name);
    vlc_memstream_vprintf(stream, fmt, ap);
    vlc_memstream_puts(stream, "\r\n");
}
