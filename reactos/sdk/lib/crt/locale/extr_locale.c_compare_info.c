
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LCID ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int GetLocaleInfoA (int ,int,char*,int ) ;
 int LOCALE_NOUSEROVERRIDE ;
 int MAX_ELEM_LEN ;
 int strcasecmp (char const*,char*) ;
 int strlen (char const*) ;
 int strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int compare_info(LCID lcid, DWORD flags, char* buff, const char* cmp, BOOL exact)
{
  int len;

  if(!cmp[0])
      return 0;

  buff[0] = 0;
  GetLocaleInfoA(lcid, flags|LOCALE_NOUSEROVERRIDE, buff, MAX_ELEM_LEN);
  if (!buff[0])
    return 0;


  len = strlen(cmp);
  if(exact || len<=3)
    return !strcasecmp(cmp, buff);
  else
    return !strncasecmp(cmp, buff, len);
}
