
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cookie_get_attribute_value (char const*,char*) ;
 int memmove (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int strspn (char*,char*) ;

__attribute__((used)) static char *cookie_get_domain( const char *cookie )
{
    char *domain = cookie_get_attribute_value( cookie, "domain" );
    if( domain == ((void*)0) )
        return ((void*)0);

    if( domain[0] == '.' )
    {
        const char *real_domain = domain + strspn( domain, "." );
        memmove( domain, real_domain, strlen( real_domain ) + 1 );
    }
    return domain;
}
