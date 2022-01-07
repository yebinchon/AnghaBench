
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ memcmp (int const*,char*,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static size_t
squote_len(const uint8_t *text, size_t size)
{
 static char* single_quote_list[] = { "'", "&#39;", "&#x27;", "&apos;", ((void*)0) };
 char** p;

 for (p = single_quote_list; *p; ++p) {
  size_t len = strlen(*p);
  if (size >= len && memcmp(text, *p, len) == 0) {
   return len;
  }
 }

 return 0;
}
