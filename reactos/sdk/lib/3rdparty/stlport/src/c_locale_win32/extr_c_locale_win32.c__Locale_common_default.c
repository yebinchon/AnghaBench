
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCALE_USER_DEFAULT ;
 int MAX_CP_LEN ;
 int __GetDefaultCP (int ) ;
 char const* __GetLocaleName (int ,char*,char*) ;
 int my_ltoa (int,char*) ;

__attribute__((used)) static const char* _Locale_common_default(char* buf) {
  char cp[MAX_CP_LEN + 1];
  int CodePage = __GetDefaultCP(LOCALE_USER_DEFAULT);
  my_ltoa(CodePage, cp);
  return __GetLocaleName(LOCALE_USER_DEFAULT, cp, buf);
}
