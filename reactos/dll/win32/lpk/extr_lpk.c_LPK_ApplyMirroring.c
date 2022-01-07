
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef int DWORD ;


 int GetFileVersionInfoSizeW (char*,int *) ;
 int GetFileVersionInfoW (char*,int ,int,void*) ;
 int GetModuleFileNameW (int ,char*,int) ;
 int GetProcessHeap () ;
 int GetUserDefaultLangID () ;
 int HIWORD (int) ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,void*) ;
 int LAYOUT_RTL ;
 scalar_t__ LOWORD (int) ;
 scalar_t__ MAKELANGID (int ,int ) ;
 int MAX_PATH ;
 int PRIMARYLANGID (int) ;
 int SUBLANG_NEUTRAL ;
 int SetProcessDefaultLayout (int) ;
 int TRACE (char*,int ) ;
 int VerQueryValueW (void*,char const*,void**,int*) ;
 int debugstr_w (char*) ;
 int sprintfW (char*,char const*,scalar_t__,int ) ;

__attribute__((used)) static void LPK_ApplyMirroring()
{
    static const WCHAR translationW[] = { '\\','V','a','r','F','i','l','e','I','n','f','o',
                                          '\\','T','r','a','n','s','l','a','t','i','o','n', 0 };
    static const WCHAR filedescW[] = { '\\','S','t','r','i','n','g','F','i','l','e','I','n','f','o',
                                       '\\','%','0','4','x','%','0','4','x',
                                       '\\','F','i','l','e','D','e','s','c','r','i','p','t','i','o','n',0 };
    WCHAR *str, buffer[MAX_PATH];




    DWORD i, len, version_layout = 0;

    DWORD user_lang = GetUserDefaultLangID();
    DWORD *languages;
    void *data = ((void*)0);

    GetModuleFileNameW( 0, buffer, MAX_PATH );
    if (!(len = GetFileVersionInfoSizeW( buffer, ((void*)0) ))) goto done;
    if (!(data = HeapAlloc( GetProcessHeap(), 0, len ))) goto done;
    if (!GetFileVersionInfoW( buffer, 0, len, data )) goto done;
    if (!VerQueryValueW( data, translationW, (void **)&languages, &len ) || !len) goto done;

    len /= sizeof(DWORD);
    for (i = 0; i < len; i++) if (LOWORD(languages[i]) == user_lang) break;
    if (i == len)
    for (i = 0; i < len; i++)
        if (LOWORD(languages[i]) == MAKELANGID( PRIMARYLANGID(user_lang), SUBLANG_NEUTRAL )) break;
    if (i == len) i = 0;

    sprintfW( buffer, filedescW, LOWORD(languages[i]), HIWORD(languages[i]) );
    if (!VerQueryValueW( data, buffer, (void **)&str, &len )) goto done;
    TRACE( "found description %s\n", debugstr_w( str ));
    if (str[0] == 0x200e && str[1] == 0x200e) version_layout = LAYOUT_RTL;

done:
    HeapFree( GetProcessHeap(), 0, data );
    SetProcessDefaultLayout(version_layout);
}
