
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {int dummy; } ;


 int strspn (char const*,char*) ;
 char* vlc_http_get_token_value (char const*,char*) ;
 char* vlc_http_msg_get_token (struct vlc_http_msg const*,char*,char*) ;

char *vlc_http_msg_get_basic_realm(const struct vlc_http_msg *m)
{
    const char *auth;





    auth = vlc_http_msg_get_token(m, "WWW-Authenticate", "Basic");
    if (auth == ((void*)0))
        return ((void*)0);

    auth += 5;
    auth += strspn(auth, " ");

    return vlc_http_get_token_value(auth, "realm");
}
