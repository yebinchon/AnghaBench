char *__ttyname(long fildes)
{
#pragma unused (fildes)

 static char *__devicename = "Terminal";

  if (fildes >= 0 && fildes <= 2)
    return (__devicename);

  return (0L);
}
