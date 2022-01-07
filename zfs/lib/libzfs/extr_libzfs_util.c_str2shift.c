
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libzfs_handle_t ;


 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int strlen (char const*) ;
 char toupper (char const) ;
 int zfs_error_aux (int *,int ,char const*) ;

__attribute__((used)) static int
str2shift(libzfs_handle_t *hdl, const char *buf)
{
 const char *ends = "BKMGTPEZ";
 int i;

 if (buf[0] == '\0')
  return (0);
 for (i = 0; i < strlen(ends); i++) {
  if (toupper(buf[0]) == ends[i])
   break;
 }
 if (i == strlen(ends)) {
  if (hdl)
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "invalid numeric suffix '%s'"), buf);
  return (-1);
 }





 if (buf[1] == '\0' ||
     (toupper(buf[0]) != 'B' &&
     ((toupper(buf[1]) == 'B' && buf[2] == '\0') ||
     (toupper(buf[1]) == 'I' && toupper(buf[2]) == 'B' &&
     buf[3] == '\0'))))
  return (10 * i);

 if (hdl)
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "invalid numeric suffix '%s'"), buf);
 return (-1);
}
