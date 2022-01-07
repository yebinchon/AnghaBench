
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef char WCHAR ;
typedef int LPBYTE ;
typedef int DWORD ;


 int CSIDL_PROFILE ;
 int FIXME (char*,int) ;
 int GetEnvironmentVariableW (char const*,char*,int ) ;
 int GetPrintProcessorDirectoryW (int *,int *,int,int ,int,int *) ;
 int GetProcessHeap () ;
 int GetSystemDirectoryW (char*,int ) ;
 int GetWindowsDirectoryW (char*,int ) ;
 char* HeapAlloc (int ,int ,int) ;
 int MAX_PATH ;
 int WARN (char*) ;
 char const* get_csidl_dir (int ) ;
 char const* get_unknown_dirid () ;
 int memcpy (char*,char*,int) ;
 int strcatW (char*,char const*) ;
 int strlenW (char*) ;

__attribute__((used)) static const WCHAR *create_system_dirid( int dirid )
{
    static const WCHAR Null[] = {0};
    static const WCHAR C_Root[] = {'C',':','\\',0};
    static const WCHAR Drivers[] = {'\\','d','r','i','v','e','r','s',0};
    static const WCHAR Inf[] = {'\\','i','n','f',0};
    static const WCHAR Help[] = {'\\','h','e','l','p',0};
    static const WCHAR Fonts[] = {'\\','f','o','n','t','s',0};
    static const WCHAR Viewers[] = {'\\','v','i','e','w','e','r','s',0};
    static const WCHAR System[] = {'\\','s','y','s','t','e','m',0};
    static const WCHAR Spool[] = {'\\','s','p','o','o','l',0};
    static const WCHAR UserProfile[] = {'U','S','E','R','P','R','O','F','I','L','E',0};

    WCHAR buffer[MAX_PATH+32], *str;
    int len;
    DWORD needed;

    switch(dirid)
    {
    case 137:
        return Null;
    case 128:
        GetWindowsDirectoryW( buffer, MAX_PATH );
        break;
    case 132:
        GetSystemDirectoryW( buffer, MAX_PATH );
        break;
    case 142:
        GetSystemDirectoryW( buffer, MAX_PATH );
        strcatW( buffer, Drivers );
        break;
    case 139:
        GetWindowsDirectoryW( buffer, MAX_PATH );
        strcatW( buffer, Inf );
        break;
    case 140:
        GetWindowsDirectoryW( buffer, MAX_PATH );
        strcatW( buffer, Help );
        break;
    case 141:
        GetWindowsDirectoryW( buffer, MAX_PATH );
        strcatW( buffer, Fonts );
        break;
    case 129:
        GetSystemDirectoryW( buffer, MAX_PATH );
        strcatW( buffer, Viewers );
        break;
    case 145:
        return C_Root;
    case 135:
        GetWindowsDirectoryW( buffer, MAX_PATH );
        break;
    case 144:
        return C_Root;
    case 131:
        GetWindowsDirectoryW( buffer, MAX_PATH );
        strcatW( buffer, System );
        break;
    case 134:
    case 133:
        GetWindowsDirectoryW( buffer, MAX_PATH );
        strcatW( buffer, Spool );
        break;
    case 130:
        if (GetEnvironmentVariableW( UserProfile, buffer, MAX_PATH )) break;
        return get_csidl_dir(CSIDL_PROFILE);
    case 138:
        return C_Root;
    case 136:
        if (!GetPrintProcessorDirectoryW(((void*)0), ((void*)0), 1, (LPBYTE)buffer, sizeof(buffer), &needed))
        {
            WARN( "cannot retrieve print processor directory\n" );
            return get_unknown_dirid();
        }
        break;
    case 143:
    default:
        FIXME( "unknown dirid %d\n", dirid );
        return get_unknown_dirid();
    }
    len = (strlenW(buffer) + 1) * sizeof(WCHAR);
    if ((str = HeapAlloc( GetProcessHeap(), 0, len ))) memcpy( str, buffer, len );
    return str;
}
