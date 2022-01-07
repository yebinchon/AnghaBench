
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char const*) ;
 int strlen (char*) ;

__attribute__((used)) static void strcat_param(char* str, const char* name, const char* param)
{
    if (param)
    {
        if (str[strlen(str)-1] == '"')
            strcat(str, ", ");
        strcat(str, name);
        strcat(str, "=\"");
        strcat(str, param);
        strcat(str, "\"");
    }
}
