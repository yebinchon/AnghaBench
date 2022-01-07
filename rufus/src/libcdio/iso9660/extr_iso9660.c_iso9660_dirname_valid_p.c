
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_ISOPATHNAME ;
 int cdio_assert (int ) ;
 scalar_t__ iso9660_is_dchar (char const) ;
 scalar_t__ strlen (char const*) ;

bool
iso9660_dirname_valid_p (const char pathname[])
{
  const char *p = pathname;
  int len;

  cdio_assert (pathname != ((void*)0));

  if (*p == '/' || *p == '.' || *p == '\0')
    return 0;

  if (strlen (pathname) > MAX_ISOPATHNAME)
    return 0;

  len = 0;
  for (; *p; p++)
    if (iso9660_is_dchar (*p))
      {
        len++;
        if (len > 8)
          return 0;
      }
    else if (*p == '/')
      {
        if (!len)
          return 0;
        len = 0;
      }
    else
      return 0;

  if (!len)
    return 0;

  return 1;
}
