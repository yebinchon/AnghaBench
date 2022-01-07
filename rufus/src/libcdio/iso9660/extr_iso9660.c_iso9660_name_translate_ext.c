
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ isupper (unsigned char) ;
 int strlen (char const*) ;
 unsigned char tolower (unsigned char) ;

int
iso9660_name_translate_ext(const char *psz_oldname, char *psz_newname,
                           uint8_t u_joliet_level)
{
  int len = strlen(psz_oldname);
  int i;

  if (0 == len) return 0;
  for (i = 0; i < len; i++) {
    unsigned char c = psz_oldname[i];
    if (!c)
      break;


    if (!u_joliet_level && isupper(c)) c = tolower(c);


    if (c == '.' && i == len - 3
        && psz_oldname[i + 1] == ';' && psz_oldname[i + 2] == '1')
      break;


    if (c == ';' && i == len - 2 && psz_oldname[i + 1] == '1')
      break;


    if (c == ';')
      c = '.';

    psz_newname[i] = c;
  }
  psz_newname[i] = '\0';
  return i;
}
