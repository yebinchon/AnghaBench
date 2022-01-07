
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ isalnum (int const) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char*,char const*,size_t) ;

int
sd_autolink_issafe(const uint8_t *link, size_t link_len)
{
 static const size_t valid_uris_count = 6;
 static const char *valid_uris[] = {
  "#", "/", "http://", "https://", "ftp://", "mailto:"
 };

 size_t i;

 for (i = 0; i < valid_uris_count; ++i) {
  size_t len = strlen(valid_uris[i]);

  if (link_len > len &&
   strncasecmp((char *)link, valid_uris[i], len) == 0 &&
   isalnum(link[len]))
   return 1;
 }

 return 0;
}
