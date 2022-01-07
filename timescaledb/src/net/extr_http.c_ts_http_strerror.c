
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t HttpError ;


 char const** http_error_strings ;

const char *
ts_http_strerror(HttpError http_errno)
{
 return http_error_strings[http_errno];
}
