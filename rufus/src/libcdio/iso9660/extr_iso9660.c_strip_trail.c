
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cdio_assert (int) ;
 int strlen (char*) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static char *
strip_trail (const char str[], size_t n)
{
  static char buf[1025];
  int j;

  cdio_assert (n < 1024);

  strncpy (buf, str, n);
  buf[n] = '\0';

  for (j = strlen (buf) - 1; j >= 0; j--)
    {
      if (buf[j] != ' ')
        break;

      buf[j] = '\0';
    }

  return buf;
}
