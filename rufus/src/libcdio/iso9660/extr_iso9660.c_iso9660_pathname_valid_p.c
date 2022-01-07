
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ISOPATHNAME ;
 int cdio_assert (int ) ;
 int free (char*) ;
 int iso9660_dirname_valid_p (char*) ;
 scalar_t__ iso9660_is_dchar (char const) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

bool
iso9660_pathname_valid_p (const char pathname[])
{
  const char *p = ((void*)0);

  cdio_assert (pathname != ((void*)0));

  if ((p = strrchr (pathname, '/')))
    {
      bool rc;
      char *_tmp = strdup (pathname);

      *strrchr (_tmp, '/') = '\0';

      rc = iso9660_dirname_valid_p (_tmp);

      free (_tmp);

      if (!rc)
        return 0;

      p++;
    }
  else
    p = pathname;

  if (strlen (pathname) > (MAX_ISOPATHNAME - 6))
    return 0;

  {
    int len = 0;
    int dots = 0;

    for (; *p; p++)
      if (iso9660_is_dchar (*p))
        {
          len++;
          if (dots == 0 ? len > 8 : len > 3)
            return 0;
        }
      else if (*p == '.')
        {
          dots++;
          if (dots > 1)
            return 0;
          if (!len)
            return 0;
          len = 0;
        }
      else
        return 0;

    if (dots != 1)
      return 0;
  }

  return 1;
}
