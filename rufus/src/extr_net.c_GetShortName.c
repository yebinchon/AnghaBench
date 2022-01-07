
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t safe_strlen (char const*) ;
 int static_strcpy (char*,char const*) ;
 size_t strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char* GetShortName(const char* url)
{
 static char short_name[128];
 char *p;
 size_t i, len = safe_strlen(url);
 if (len < 5)
  return ((void*)0);

 for (i = len - 2; i > 0; i--) {
  if (url[i] == '/') {
   i++;
   break;
  }
 }
 static_strcpy(short_name, &url[i]);


 p = strstr(short_name, "%3F");
 if (p != ((void*)0))
  *p = 0;
 p = strstr(short_name, "%3f");
 if (p != ((void*)0))
  *p = 0;
 for (i = 0; i < strlen(short_name); i++) {
  if ((short_name[i] == '?') || (short_name[i] == '#')) {
   short_name[i] = 0;
   break;
  }
 }
 return short_name;
}
