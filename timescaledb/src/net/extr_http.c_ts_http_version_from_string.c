
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HttpVersion ;


 int HTTP_VERSION_INVALID ;
 int * http_version_strings ;
 scalar_t__ pg_strcasecmp (int ,char const*) ;

HttpVersion
ts_http_version_from_string(const char *version)
{
 int i;

 for (i = 0; i < HTTP_VERSION_INVALID; i++)
  if (pg_strcasecmp(http_version_strings[i], version) == 0)
   return i;

 return HTTP_VERSION_INVALID;
}
