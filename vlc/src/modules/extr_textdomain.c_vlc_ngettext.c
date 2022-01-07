
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PACKAGE_NAME ;
 char const* dngettext (int ,char const*,char const*,unsigned long) ;
 scalar_t__ likely (char const) ;

const char *vlc_ngettext(const char *msgid, const char *plural,
                         unsigned long n)
{




    return ((n == 1) ? msgid : plural);
}
