
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* match_string (char const*,char const*) ;

__attribute__((used)) static const char *find_string(const char *s, const char *needle, const char **endp)
{
 const char *end;
 while (*s)
 {
  end = match_string(s, needle);
  if (end)
   return *endp = end, s;
  ++s;
 }
 return *endp = ((void*)0), ((void*)0);
}
