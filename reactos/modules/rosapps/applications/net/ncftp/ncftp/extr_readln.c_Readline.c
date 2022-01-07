
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lbuf ;


 char* StrDup (char*) ;
 char* fgets (char*,int,int ) ;
 scalar_t__ gIsTTYr ;
 char* getline (char*) ;
 int stdin ;
 int strlen (char*) ;

char *
Readline(char *prompt)
{
 char *linecopy, *line, *cp;
 char lbuf[256];

 if (gIsTTYr) {
  line = getline(prompt);
 } else {
  line = fgets(lbuf, sizeof(lbuf) - 1, stdin);
  if (line != ((void*)0)) {
   cp = line + strlen(line) - 1;
   if (*cp == '\n')
    *cp = '\0';
  }
 }

 if (line != ((void*)0)) {
  if (line[0] == '\0')
   return ((void*)0);
  linecopy = StrDup(line);
  line = linecopy;
 }
 return (line);
}
