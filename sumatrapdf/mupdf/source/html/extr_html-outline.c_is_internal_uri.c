
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_internal_uri(const char *uri)
{
 while (*uri >= 'a' && *uri <= 'z')
  ++uri;
 if (uri[0] == ':' && uri[1] == '/' && uri[2] == '/')
  return 0;
 return 1;
}
