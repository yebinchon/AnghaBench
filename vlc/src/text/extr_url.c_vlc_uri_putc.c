
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {int dummy; } ;


 scalar_t__ isurisafe (int) ;
 scalar_t__ isurisubdelim (int) ;
 int * strchr (char const*,int) ;
 int vlc_memstream_printf (struct vlc_memstream*,char*,unsigned char) ;
 int vlc_memstream_putc (struct vlc_memstream*,int) ;

__attribute__((used)) static void vlc_uri_putc(struct vlc_memstream *s, int c, const char *extras)
{
    if (isurisafe(c) || isurisubdelim(c) || (strchr(extras, c) != ((void*)0)))
        vlc_memstream_putc(s, c);
    else
        vlc_memstream_printf(s, "%%%02hhX", (unsigned char)c);
}
