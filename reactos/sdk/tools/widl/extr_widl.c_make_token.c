
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (char) ;
 char* strrchr (char const*,char) ;
 char tolower (char) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *make_token(const char *name)
{
  char *token;
  char *slash;
  int i;

  slash = strrchr(name, '/');
  if(!slash)
    slash = strrchr(name, '\\');

  if (slash) name = slash + 1;

  token = xstrdup(name);
  for (i=0; token[i]; i++) {
    if (!isalnum(token[i])) token[i] = '_';
    else token[i] = tolower(token[i]);
  }
  return token;
}
