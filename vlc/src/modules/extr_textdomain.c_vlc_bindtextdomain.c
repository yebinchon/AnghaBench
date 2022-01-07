
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LocaleFree (char*) ;
 char const* PACKAGE_NAME ;
 char* ToLocale (char*) ;
 int VLC_LOCALE_DIR ;
 int * bind_textdomain_codeset (char const*,char*) ;
 int * bindtextdomain (char const*,char*) ;
 char* config_GetSysPath (int ,int *) ;
 int fprintf (int ,char*,char const*,...) ;
 int free (char*) ;
 int stderr ;
 scalar_t__ unlikely (int ) ;

int vlc_bindtextdomain (const char *domain)
{
    (void)domain;


    return 0;
}
