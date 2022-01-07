
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static const char *
_zed_event_get_subclass(const char *class)
{
 const char *p;
 int i;

 if (!class)
  return (((void*)0));

 p = class;
 for (i = 0; i < 3; i++) {
  p = strchr(p, '.');
  if (!p)
   break;
  p++;
 }
 return (p);
}
