
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iswhite (char const) ;

__attribute__((used)) static int is_all_white(const char *s)
{
 while (*s)
 {
  if (!iswhite(*s))
   return 0;
  ++s;
 }
 return 1;
}
