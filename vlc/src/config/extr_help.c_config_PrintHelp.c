
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int Help (int *,char*) ;
 int ListModules (int *,int) ;
 int VLC_VAR_BOOL ;
 int Version () ;
 int free (char*) ;
 int var_Create (int *,char*,int ) ;
 scalar_t__ var_InheritBool (int *,char*) ;
 char* var_InheritString (int *,char*) ;
 int var_SetBool (int *,char*,int) ;

bool config_PrintHelp (vlc_object_t *obj)
{
    char *str;


    if (var_InheritBool (obj, "help"))
    {
        Help (obj, "help");
        return 1;
    }


    if (var_InheritBool (obj, "version"))
    {
        Version();
        return 1;
    }


    str = var_InheritString (obj, "module");
    if (str != ((void*)0))
    {
        Help (obj, str);
        free (str);
        return 1;
    }


    if (var_InheritBool (obj, "full-help"))
    {
        var_Create (obj, "help-verbose", VLC_VAR_BOOL);
        var_SetBool (obj, "help-verbose", 1);
        Help (obj, "full-help");
        return 1;
    }


    if (var_InheritBool (obj, "longhelp"))
    {
        Help (obj, "longhelp");
        return 1;
    }


    if (var_InheritBool (obj, "list"))
    {
        ListModules (obj, 0 );
        return 1;
    }

    if (var_InheritBool (obj, "list-verbose"))
    {
        ListModules (obj, 1);
        return 1;
    }

    return 0;
}
