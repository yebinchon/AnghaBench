
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdup (char const*) ;
 char toupper (unsigned char) ;

char *
_cdio_strdup_upper (const char str[])
{
  char *new_str = ((void*)0);

  if (str)
    {
      char *p;

      p = new_str = strdup (str);

      while (*p)
        {
          *p = toupper ((unsigned char) *p);
          p++;
        }
    }

  return new_str;
}
