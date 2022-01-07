
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t HttpVersion ;


 char const** http_version_strings ;

const char *
ts_http_version_string(HttpVersion version)
{
 return http_version_strings[version];
}
