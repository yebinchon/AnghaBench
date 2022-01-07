
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_text_language ;


 int FZ_LANG_zh_Hans ;
 int FZ_LANG_zh_Hant ;
 int fz_strlcpy (char*,char*,int) ;

char *fz_string_from_text_language(char str[8], fz_text_language lang)
{
 int c;


 if (str == ((void*)0))
  return ((void*)0);

 if (lang == FZ_LANG_zh_Hant)
  fz_strlcpy(str, "zh-Hant", 8);
 else if (lang == FZ_LANG_zh_Hans)
  fz_strlcpy(str, "zh-Hans", 8);
 else
 {
  c = lang % 27;
  lang = lang / 27;
  str[0] = c == 0 ? 0 : c - 1 + 'a';
  c = lang % 27;
  lang = lang / 27;
  str[1] = c == 0 ? 0 : c - 1 + 'a';
  c = lang % 27;
  str[2] = c == 0 ? 0 : c - 1 + 'a';
  str[3] = 0;
 }

 return str;
}
