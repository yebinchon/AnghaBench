
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t atoi (char const*) ;
 int isdigit (char const) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static bool
parse_number(const char **posref, size_t *number, size_t min, size_t max)
{
 const char *pos = *posref;

 *posref = ((void*)0);
 pos = strchr(pos + 1, ' ');
 if (!pos || !isdigit(pos[1]))
  return 0;
 *number = atoi(pos + 1);
 if (*number < min || *number > max)
  return 0;

 *posref = pos;
 return 1;
}
