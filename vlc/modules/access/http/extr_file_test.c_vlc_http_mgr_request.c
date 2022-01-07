
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct vlc_http_msg {int dummy; } ;
struct vlc_http_mgr {int dummy; } ;


 int assert (int) ;
 scalar_t__ etags ;
 scalar_t__ lang ;
 scalar_t__ offset ;
 int secure ;
 scalar_t__ strcmp (char const*,char*) ;
 int stream ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int * strstr (char const*,char*) ;
 scalar_t__ strtoul (char const*,char**,int) ;
 char* ua ;
 char* vlc_http_msg_get_agent (struct vlc_http_msg const*) ;
 char* vlc_http_msg_get_authority (struct vlc_http_msg const*) ;
 char* vlc_http_msg_get_header (struct vlc_http_msg const*,char*) ;
 struct vlc_http_msg* vlc_http_msg_get_initial (int *) ;
 char* vlc_http_msg_get_method (struct vlc_http_msg const*) ;
 char* vlc_http_msg_get_path (struct vlc_http_msg const*) ;
 char* vlc_http_msg_get_scheme (struct vlc_http_msg const*) ;
 int vlc_http_msg_get_time (struct vlc_http_msg const*,char*) ;

struct vlc_http_msg *vlc_http_mgr_request(struct vlc_http_mgr *mgr, bool https,
                                          const char *host, unsigned port,
                                          const struct vlc_http_msg *req)
{
    const char *str;
    char *end;

    assert(https == secure);
    assert(mgr == ((void*)0));
    assert(!strcmp(host, "www.example.com"));
    assert(port == 8443);

    str = vlc_http_msg_get_method(req);
    assert(!strcmp(str, "GET"));
    str = vlc_http_msg_get_scheme(req);
    assert(!strcmp(str, secure ? "https" : "http"));
    str = vlc_http_msg_get_authority(req);
    assert(!strcmp(str, "www.example.com:8443"));
    str = vlc_http_msg_get_path(req);
    assert(!strcmp(str, "/dir/file.ext?a=b"));
    str = vlc_http_msg_get_agent(req);
    assert(!strcmp(str, ua));
    str = vlc_http_msg_get_header(req, "Referer");
    assert(str == ((void*)0));
    str = vlc_http_msg_get_header(req, "Accept");
    assert(str == ((void*)0) || strstr(str, "*/*") != ((void*)0));

    str = vlc_http_msg_get_header(req, "Accept-Language");

    if (lang != 0)
    {
        assert(str != ((void*)0) && strncmp(str, "en_US", 5) == 0);
        if (lang > 0)
            lang--;
    }
    else
        assert(str == ((void*)0));

    str = vlc_http_msg_get_header(req, "Range");
    assert(str != ((void*)0) && !strncmp(str, "bytes=", 6)
        && strtoul(str + 6, &end, 10) == offset && *end == '-');

    time_t mtime = vlc_http_msg_get_time(req, "If-Unmodified-Since");
    str = vlc_http_msg_get_header(req, "If-Match");

    if (etags)
    {
        if (offset != 0)
            assert(str != ((void*)0) && !strcmp(str, "\"foobar42\""));
        else
        if (str != ((void*)0))
            assert(strcmp(str, "*") || strcmp(str, "\"foobar42\""));
    }
    else
    {
        if (offset != 0)
            assert(mtime == 1382386402);
    }

    return vlc_http_msg_get_initial(&stream);
}
