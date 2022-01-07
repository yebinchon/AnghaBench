
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef int LONG ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 int HKEY_CLASSES_ROOT ;
 int HKEY_CURRENT_USER ;
 scalar_t__ MSIINSTALLCONTEXT_MACHINE ;
 int RegCreateKeyW (int ,char const*,int *) ;

__attribute__((used)) static LONG open_global_assembly_key( UINT context, BOOL win32, HKEY *hkey )
{
    static const WCHAR path_win32[] =
        {'S','o','f','t','w','a','r','e','\\','M','i','c','r','o','s','o','f','t','\\',
         'I','n','s','t','a','l','l','e','r','\\','W','i','n','3','2','A','s','s','e','m','b','l','i','e','s','\\',
         'G','l','o','b','a','l',0};
    static const WCHAR path_dotnet[] =
        {'S','o','f','t','w','a','r','e','\\','M','i','c','r','o','s','o','f','t','\\',
         'I','n','s','t','a','l','l','e','r','\\','A','s','s','e','m','b','l','i','e','s','\\',
         'G','l','o','b','a','l',0};
    static const WCHAR classes_path_win32[] =
        {'I','n','s','t','a','l','l','e','r','\\','W','i','n','3','2','A','s','s','e','m','b','l','i','e','s','\\',
         'G','l','o','b','a','l',0};
    static const WCHAR classes_path_dotnet[] =
        {'I','n','s','t','a','l','l','e','r','\\','A','s','s','e','m','b','l','i','e','s','\\','G','l','o','b','a','l',0};
    HKEY root;
    const WCHAR *path;

    if (context == MSIINSTALLCONTEXT_MACHINE)
    {
        root = HKEY_CLASSES_ROOT;
        if (win32) path = classes_path_win32;
        else path = classes_path_dotnet;
    }
    else
    {
        root = HKEY_CURRENT_USER;
        if (win32) path = path_win32;
        else path = path_dotnet;
    }
    return RegCreateKeyW( root, path, hkey );
}
