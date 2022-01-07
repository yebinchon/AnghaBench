
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 int strncmp (char const*,char*,size_t) ;

__attribute__((used)) static bool
match_blame_header(const char *name, char **line)
{
 size_t namelen = strlen(name);
 bool matched = !strncmp(name, *line, namelen);

 if (matched)
  *line += namelen;

 return matched;
}
