
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_memstream {char* ptr; } ;


 int assert (int ) ;
 scalar_t__ isurialnum (char const) ;
 scalar_t__ isurihex (char const) ;
 int * memchr (char*,char const,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ vlc_memstream_close (struct vlc_memstream*) ;
 int vlc_memstream_open (struct vlc_memstream*) ;
 int vlc_memstream_putc (struct vlc_memstream*,int ) ;
 int vlc_memstream_write (struct vlc_memstream*,char const*,int) ;
 int vlc_uri_putc (struct vlc_memstream*,int ,char const*) ;

char *vlc_uri_fixup(const char *str)
{
    assert(str != ((void*)0));





    bool encode_percent = 0;

    for (const char *p = str; *p != '\0'; p++)
        if (p[0] == '%' && !(isurihex(p[1]) && isurihex(p[2])))
        {
            encode_percent = 1;
            break;
        }

    struct vlc_memstream stream;
    vlc_memstream_open(&stream);


    const char *p = str;
    bool absolute = 0;
    bool encode_brackets = 1;

    while (isurialnum(*p) || memchr("+-.", *p, 3) != ((void*)0))
        vlc_memstream_putc(&stream, *(p++));

    if (p > str && *p == ':')
    {
        vlc_memstream_putc(&stream, *(p++));
        absolute = 1;
        encode_brackets = 0;
    }


    if ((absolute || p == str) && strncmp(p, "//", 2) == 0)
    {
        vlc_memstream_write(&stream, p, 2);
        p += 2;
        encode_brackets = 1;

        while (memchr("/?#", *p, 4) == ((void*)0))
            vlc_uri_putc(&stream, *(p++), &"%:[]@"[encode_percent]);
    }


    const char *extras = encode_brackets ? "%/?#@" : "%:/?#[]@";

    while (*p != '\0')
        vlc_uri_putc(&stream, *(p++), extras + encode_percent);

    return vlc_memstream_close(&stream) ? ((void*)0) : stream.ptr;
}
