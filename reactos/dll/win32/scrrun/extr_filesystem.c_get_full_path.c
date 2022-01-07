
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
typedef int WCHAR ;
typedef char* BSTR ;


 int MAX_PATH ;
 char* SysAllocString (int *) ;
 int SysStringLen (char*) ;
 int bsW ;
 int strcatW (int *,int ) ;
 int strcpyW (int *,char*) ;

__attribute__((used)) static BSTR get_full_path(BSTR path, const WIN32_FIND_DATAW *data)
{
    int len = SysStringLen(path);
    WCHAR buffW[MAX_PATH];

    strcpyW(buffW, path);
    if (path[len-1] != '\\')
        strcatW(buffW, bsW);
    strcatW(buffW, data->cFileName);

    return SysAllocString(buffW);
}
