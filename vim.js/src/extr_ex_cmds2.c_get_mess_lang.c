
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ char_u ;


 int LC_COLLATE ;
 int LC_MESSAGES ;
 scalar_t__ NUL ;
 scalar_t__ get_locale_val (int ) ;
 scalar_t__* gettext_lang (scalar_t__*) ;
 scalar_t__* mch_getenv (scalar_t__*) ;

char_u *
get_mess_lang()
{
    char_u *p;
    p = mch_getenv((char_u *)"LC_ALL");
    if (p == ((void*)0) || *p == NUL)
    {
 p = mch_getenv((char_u *)"LC_MESSAGES");
 if (p == ((void*)0) || *p == NUL)
     p = mch_getenv((char_u *)"LANG");
    }




    return p;
}
