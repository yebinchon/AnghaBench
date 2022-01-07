
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L_MODEEXT ;
 int * strchr (char*,int ) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strspn (char const*,int ) ;

__attribute__((used)) static int l_checkmode (const char *mode) {
  return (*mode != '\0' && strchr("rwa", *(mode++)) != ((void*)0) &&
         (*mode != '+' || (++mode, 1)) &&
         (strspn(mode, L_MODEEXT) == strlen(mode)));
}
