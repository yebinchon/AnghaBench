
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* fgets (char*,int,int ) ;
 int fputs (char const*,int ) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int stdin ;
 int stdout ;
 int strlen (char*) ;

char *readline(const char *prompt)
{
 static char line[500], *p;
 int n;
 fputs(prompt, stdout);
 p = fgets(line, sizeof line, stdin);
 if (p) {
  n = strlen(line);
  if (n > 0 && line[n-1] == '\n')
   line[--n] = 0;
  p = malloc(n+1);
  memcpy(p, line, n+1);
  return p;
 }
 return ((void*)0);
}
