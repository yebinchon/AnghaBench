
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isblank (char) ;

__attribute__((used)) static int
is_blank_str(char *str)
{
 while (str != ((void*)0) && *str != '\0') {
  if (!isblank(*str))
   return (0);
  str++;
 }
 return (1);
}
