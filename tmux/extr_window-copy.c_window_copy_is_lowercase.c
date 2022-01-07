
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 char const tolower (int ) ;

__attribute__((used)) static int
window_copy_is_lowercase(const char *ptr)
{
 while (*ptr != '\0') {
  if (*ptr != tolower((u_char)*ptr))
   return (0);
  ++ptr;
 }
 return (1);
}
