
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int ARRAY_SIZE (char const*) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,char*) ;
 int MAX_PATH ;
 char* build_assembly_name (char const*,char const*,char const*,char const*,unsigned int*) ;
 scalar_t__ build_sxs_path (char*) ;
 int strcatW (char*,char const*) ;
 int strcpyW (char*,char*) ;

__attribute__((used)) static WCHAR *build_manifest_filename( const WCHAR *arch, const WCHAR *name, const WCHAR *token,
                                       const WCHAR *version )
{
    static const WCHAR manifestsW[] = {'m','a','n','i','f','e','s','t','s','\\',0};
    static const WCHAR suffixW[] = {'.','m','a','n','i','f','e','s','t',0};
    WCHAR sxsdir[MAX_PATH], *ret, *fullname;
    unsigned int len;

    if (!(fullname = build_assembly_name( arch, name, token, version, &len ))) return ((void*)0);
    len += build_sxs_path( sxsdir );
    len += ARRAY_SIZE(manifestsW) - 1;
    len += ARRAY_SIZE(suffixW) - 1;
    if (!(ret = HeapAlloc( GetProcessHeap(), 0, (len + 1) * sizeof(WCHAR) )))
    {
        HeapFree( GetProcessHeap(), 0, fullname );
        return ((void*)0);
    }
    strcpyW( ret, sxsdir );
    strcatW( ret, manifestsW );
    strcatW( ret, fullname );
    strcatW( ret, suffixW );

    HeapFree( GetProcessHeap(), 0, fullname );
    return ret;
}
