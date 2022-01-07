
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {int dummy; } ;


 int assert (int) ;
 int strcmp (char const*,char*) ;
 char* vlc_http_msg_get_authority (struct vlc_http_msg const*) ;
 char* vlc_http_msg_get_header (struct vlc_http_msg const*,char*) ;
 char* vlc_http_msg_get_method (struct vlc_http_msg const*) ;
 char* vlc_http_msg_get_path (struct vlc_http_msg const*) ;
 char* vlc_http_msg_get_scheme (struct vlc_http_msg const*) ;
 int vlc_http_msg_get_status (struct vlc_http_msg const*) ;

__attribute__((used)) static void check_resp(const struct vlc_http_msg *m)
{
    const char *str;

    assert(vlc_http_msg_get_status(m) == 200);
    str = vlc_http_msg_get_method(m);
    assert(str == ((void*)0));
    str = vlc_http_msg_get_scheme(m);
    assert(str == ((void*)0));
    str = vlc_http_msg_get_authority(m);
    assert(str == ((void*)0));
    str = vlc_http_msg_get_path(m);
    assert(str == ((void*)0));

    str = vlc_http_msg_get_header(m, "Cache-Control");
    assert(str != ((void*)0) && !strcmp(str, "private"));
    str = vlc_http_msg_get_header(m, "Date");
    assert(str != ((void*)0) && !strcmp(str, "Mon, 21 Oct 2013 20:13:22 GMT"));
    str = vlc_http_msg_get_header(m, "Location");
    assert(str != ((void*)0) && !strcmp(str, "https://www.example.com"));
    str = vlc_http_msg_get_header(m, "Content-Encoding");
    assert(str != ((void*)0) && !strcmp(str, "gzip"));
    str = vlc_http_msg_get_header(m, "Set-Cookie");
    assert(str != ((void*)0) && !strcmp(str, "foo=ASDJKHQKBZXOQWEOPIUAXQWEOIU; "
                                  "max-age=3600; version=1"));

    str = vlc_http_msg_get_header(m, "Custom-Key");
    assert(str == ((void*)0));
}
