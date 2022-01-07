
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int version_str ;


 char* PACKAGE_VERSION ;
 unsigned int atoi (char const*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 char* strchr (char const*,char) ;
 int wpp_add_define (char*,char*) ;

__attribute__((used)) static void add_widl_version_define(void)
{
    unsigned int version;
    const char *p = PACKAGE_VERSION;


    version = atoi(p) * 0x10000;
    p = strchr(p, '.');


    if (p)
    {
        version += atoi(p + 1) * 0x100;
        p = strchr(p + 1, '.');
    }


    if (p)
        version += atoi(p + 1);

    if (version != 0)
    {
        char version_str[11];
        snprintf(version_str, sizeof(version_str), "0x%x", version);
        wpp_add_define("__WIDL__", version_str);
    }
    else
        wpp_add_define("__WIDL__", ((void*)0));
}
