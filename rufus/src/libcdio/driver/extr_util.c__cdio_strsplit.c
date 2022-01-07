
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** calloc (int,int) ;
 int cdio_assert (int ) ;
 int free (char*) ;
 char* strdup (char const*) ;
 char* strtok (char*,char*) ;

char **
_cdio_strsplit(const char str[], char delim)
{
  int n;
  char **strv = ((void*)0);
  char *_str, *p;
  char _delim[2] = { 0, 0 };

  cdio_assert (str != ((void*)0));

  _str = strdup(str);
  _delim[0] = delim;

  cdio_assert (_str != ((void*)0));

  n = 1;
  p = _str;
  while(*p)
    if (*(p++) == delim)
      n++;

  strv = calloc (n+1, sizeof (char *));
  cdio_assert (strv != ((void*)0));

  n = 0;
  while((p = strtok(n ? ((void*)0) : _str, _delim)) != ((void*)0))
    strv[n++] = strdup(p);

  free(_str);

  return strv;
}
