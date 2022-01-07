
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int ARRAY_SIZE (char const*) ;
 int CreateDirectoryW (char*,int *) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,char*) ;
 int MAX_PATH ;
 char const* backslashW ;
 char* build_policy_name (char const*,char const*,char const*,unsigned int*) ;
 scalar_t__ build_sxs_path (char*) ;
 int strcatW (char*,char const*) ;
 int strcpyW (char*,char*) ;
 scalar_t__ strlenW (char const*) ;

__attribute__((used)) static WCHAR *build_policy_filename( const WCHAR *arch, const WCHAR *name, const WCHAR *token,
                                     const WCHAR *version )
{
    static const WCHAR policiesW[] = {'p','o','l','i','c','i','e','s','\\',0};
    static const WCHAR suffixW[] = {'.','p','o','l','i','c','y',0};
    WCHAR sxsdir[MAX_PATH], *ret, *fullname;
    unsigned int len;

    if (!(fullname = build_policy_name( arch, name, token, &len ))) return ((void*)0);
    len += build_sxs_path( sxsdir );
    len += ARRAY_SIZE(policiesW) - 1;
    len += strlenW( version );
    len += ARRAY_SIZE(suffixW) - 1;
    if (!(ret = HeapAlloc( GetProcessHeap(), 0, (len + 1) * sizeof(WCHAR) )))
    {
        HeapFree( GetProcessHeap(), 0, fullname );
        return ((void*)0);
    }
    strcpyW( ret, sxsdir );
    strcatW( ret, policiesW );
    CreateDirectoryW( ret, ((void*)0) );
    strcatW( ret, name );
    CreateDirectoryW( ret, ((void*)0) );
    strcatW( ret, backslashW );
    strcatW( ret, version );
    strcatW( ret, suffixW );

    HeapFree( GetProcessHeap(), 0, fullname );
    return ret;
}
