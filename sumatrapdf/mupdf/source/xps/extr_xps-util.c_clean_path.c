
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SEP (char) ;
 char* skip_authority (char*) ;
 char* skip_scheme (char*) ;

__attribute__((used)) static char *
clean_path(char *name)
{
 char *p, *q, *dotdot, *start;
 int rooted;

 start = skip_scheme(name);
 start = skip_authority(start);
 rooted = start[0] == '/';
 p = q = dotdot = start + rooted;
 while (*p)
 {
  if(p[0] == '/')
   p++;
  else if (p[0] == '.' && SEP(p[1]))
   p += 1;
  else if (p[0] == '.' && p[1] == '.' && SEP(p[2]))
  {
   p += 2;
   if (q > dotdot)
   {
    while(--q > dotdot && *q != '/')
     ;
   }
   else if (!rooted)
   {
    if (q != start)
     *q++ = '/';
    *q++ = '.';
    *q++ = '.';
    dotdot = q;
   }
  }
  else
  {
   if (q != start+rooted)
    *q++ = '/';
   while ((*q = *p) != '/' && *q != 0)
    p++, q++;
  }
 }

 if (q == start)
  *q++ = '.';
 *q = '\0';

 return name;
}
