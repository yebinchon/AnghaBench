
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_3__ {int fAnyOperationsAborted; int fFlags; int * pTo; scalar_t__* pFrom; int wFunc; int * hwnd; } ;
typedef TYPE_1__ SHFILEOPSTRUCTW ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*,int ,int) ;
 int FALSE ;
 int FOF_NOCONFIRMATION ;
 int FO_DELETE ;
 int MAX_PATH ;
 int SHFileOperationW (TYPE_1__*) ;
 int debugstr_w (scalar_t__*) ;
 int strcpyW (scalar_t__*,int ) ;
 int strlenW (int ) ;

__attribute__((used)) static BOOL cache_container_delete_dir(LPCWSTR lpszPath)
{
    DWORD path_len;
    WCHAR path[MAX_PATH + 1];
    SHFILEOPSTRUCTW shfos;
    int ret;

    path_len = strlenW(lpszPath);
    if (path_len >= MAX_PATH)
        return FALSE;
    strcpyW(path, lpszPath);
    path[path_len + 1] = 0;

    shfos.hwnd = ((void*)0);
    shfos.wFunc = FO_DELETE;
    shfos.pFrom = path;
    shfos.pTo = ((void*)0);
    shfos.fFlags = FOF_NOCONFIRMATION;
    shfos.fAnyOperationsAborted = FALSE;
    ret = SHFileOperationW(&shfos);
    if (ret)
        ERR("SHFileOperationW on %s returned %i\n", debugstr_w(path), ret);
    return !(ret || shfos.fAnyOperationsAborted);
}
