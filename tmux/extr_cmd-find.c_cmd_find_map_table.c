
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static const char *
cmd_find_map_table(const char *table[][2], const char *s)
{
 u_int i;

 for (i = 0; table[i][0] != ((void*)0); i++) {
  if (strcmp(s, table[i][0]) == 0)
   return (table[i][1]);
 }
 return (s);
}
