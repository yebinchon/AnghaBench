
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int b_secure; } ;
typedef TYPE_1__ http_cookie_t ;


 int cookie_domain_matches (TYPE_1__ const*,char const*) ;
 int cookie_path_matches (TYPE_1__ const*,char const*) ;

__attribute__((used)) static bool cookie_should_be_sent(const http_cookie_t *cookie, bool secure,
                                  const char *host, const char *path)
{
    bool protocol_ok = secure || !cookie->b_secure;
    bool domain_ok = cookie_domain_matches(cookie, host);
    bool path_ok = cookie_path_matches(cookie, path);
    return protocol_ok && domain_ok && path_ok;
}
