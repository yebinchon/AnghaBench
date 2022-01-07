
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_text_language ;


 int FZ_LANG_UNSET ;
 int FZ_LANG_zh_Hans ;
 int FZ_LANG_zh_Hant ;
 int strcmp (char const*,char*) ;

fz_text_language fz_text_language_from_string(const char *str)
{
 fz_text_language lang;

 if (str == ((void*)0))
  return FZ_LANG_UNSET;

 if (!strcmp(str, "zh-Hant") ||
   !strcmp(str, "zh-HK") ||
   !strcmp(str, "zh-MO") ||
   !strcmp(str, "zh-SG") ||
   !strcmp(str, "zh-TW"))
  return FZ_LANG_zh_Hant;
 if (!strcmp(str, "zh-Hans") ||
   !strcmp(str, "zh-CN"))
  return FZ_LANG_zh_Hans;


 if (str[0] >= 'a' && str[0] <= 'z')
  lang = str[0] - 'a' + 1;
 else if (str[0] >= 'A' && str[0] <= 'Z')
  lang = str[0] - 'A' + 1;
 else
  return 0;


 if (str[1] >= 'a' && str[1] <= 'z')
  lang += 27*(str[1] - 'a' + 1);
 else if (str[1] >= 'A' && str[1] <= 'Z')
  lang += 27*(str[1] - 'A' + 1);
 else
  return 0;


 if (str[2] >= 'a' && str[2] <= 'z')
  lang += 27*27*(str[2] - 'a' + 1);
 else if (str[2] >= 'A' && str[2] <= 'Z')
  lang += 27*27*(str[2] - 'A' + 1);



 return lang;
}
