
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 char NUL ;
 scalar_t__ STRCMP (int ,char*) ;
 int T_NAME ;
 char* mch_getenv (char*) ;
 char* vim_strrchr (char*,char) ;

__attribute__((used)) static char_u *
term_bg_default()
{




    char_u *p;

    if (STRCMP(T_NAME, "linux") == 0
     || STRCMP(T_NAME, "screen.linux") == 0
     || STRCMP(T_NAME, "cygwin") == 0
     || STRCMP(T_NAME, "putty") == 0
     || ((p = mch_getenv((char_u *)"COLORFGBG")) != ((void*)0)
  && (p = vim_strrchr(p, ';')) != ((void*)0)
  && ((p[1] >= '0' && p[1] <= '6') || p[1] == '8')
  && p[2] == NUL))
 return (char_u *)"dark";
    return (char_u *)"light";

}
