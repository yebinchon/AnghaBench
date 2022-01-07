
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FromCharset (int ,char const*,int ) ;
 int strlen (char const*) ;
 int vlc_pgettext (char*,char*) ;

__attribute__((used)) static char *FromACP( const char *str )
{
    return FromCharset(vlc_pgettext("GetACP", "CP1252"), str, strlen(str));
}
