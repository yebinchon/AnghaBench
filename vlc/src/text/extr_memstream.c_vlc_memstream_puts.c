
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {int dummy; } ;


 int EOF ;
 size_t strlen (char const*) ;
 size_t vlc_memstream_write (struct vlc_memstream*,char const*,size_t) ;

int (vlc_memstream_puts)(struct vlc_memstream *ms, const char *str)
{
    size_t len = strlen(str);
    return (vlc_memstream_write(ms, str, len) == len) ? 0 : EOF;
}
