
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cookie_get_attribute_value (char const*,char*) ;

__attribute__((used)) static char *cookie_get_path(const char *cookie)
{
    return cookie_get_attribute_value(cookie, "path");
}
