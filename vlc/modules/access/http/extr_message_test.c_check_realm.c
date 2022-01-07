
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {int dummy; } ;


 int assert (int) ;
 int free (char*) ;
 int strcmp (char*,char const*) ;
 scalar_t__ vlc_http_msg_add_header (struct vlc_http_msg*,char*,char*,char const*) ;
 int vlc_http_msg_destroy (struct vlc_http_msg*) ;
 char* vlc_http_msg_get_basic_realm (struct vlc_http_msg*) ;
 struct vlc_http_msg* vlc_http_resp_create (int) ;

__attribute__((used)) static const char *check_realm(const char *line, const char *realm)
{
    struct vlc_http_msg *m;
    char *value;

    m = vlc_http_resp_create(401);
    assert(m != ((void*)0));
    assert(vlc_http_msg_add_header(m, "WWW-Authenticate", "%s", line) == 0);
    value = vlc_http_msg_get_basic_realm(m);
    if (realm == ((void*)0))
        assert(value == ((void*)0));
    else
    {
        assert(value != ((void*)0));
        assert(!strcmp(value, realm));
        free(value);
    }
    vlc_http_msg_destroy(m);
    return realm;
}
