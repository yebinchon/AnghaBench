
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_6__ {int wCodePage; int wLanguage; } ;
struct TYPE_5__ {int db; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int * LPWSTR ;
typedef int * LPVOID ;
typedef TYPE_2__ LANGANDCODEPAGE ;
typedef int DWORD ;


 int GetFileVersionInfoSizeW (int *,int *) ;
 int GetFileVersionInfoW (int *,int ,int ,int *) ;
 int MAX_PATH ;
 int VerQueryValueW (int *,char const*,int **,int *) ;
 int * get_fusion_filename (TYPE_1__*) ;
 int * msi_alloc (int ) ;
 int msi_free (int *) ;
 int msi_set_property (int ,char const*,int *,int) ;
 int sprintfW (char*,char const*,int ,int ) ;

__attribute__((used)) static void set_msi_assembly_prop(MSIPACKAGE *package)
{
    UINT val_len;
    DWORD size, handle;
    LPVOID version = ((void*)0);
    WCHAR buf[MAX_PATH];
    LPWSTR fusion, verstr;
    LANGANDCODEPAGE *translate;

    static const WCHAR netasm[] = {
        'M','s','i','N','e','t','A','s','s','e','m','b','l','y','S','u','p','p','o','r','t',0
    };
    static const WCHAR translation[] = {
        '\\','V','a','r','F','i','l','e','I','n','f','o',
        '\\','T','r','a','n','s','l','a','t','i','o','n',0
    };
    static const WCHAR verfmt[] = {
        '\\','S','t','r','i','n','g','F','i','l','e','I','n','f','o',
        '\\','%','0','4','x','%','0','4','x',
        '\\','P','r','o','d','u','c','t','V','e','r','s','i','o','n',0
    };

    fusion = get_fusion_filename(package);
    if (!fusion)
        return;

    size = GetFileVersionInfoSizeW(fusion, &handle);
    if (!size)
        goto done;

    version = msi_alloc(size);
    if (!version)
        goto done;

    if (!GetFileVersionInfoW(fusion, handle, size, version))
        goto done;

    if (!VerQueryValueW(version, translation, (LPVOID *)&translate, &val_len))
        goto done;

    sprintfW(buf, verfmt, translate[0].wLanguage, translate[0].wCodePage);

    if (!VerQueryValueW(version, buf, (LPVOID *)&verstr, &val_len))
        goto done;

    if (!val_len || !verstr)
        goto done;

    msi_set_property( package->db, netasm, verstr, -1 );

done:
    msi_free(fusion);
    msi_free(version);
}
