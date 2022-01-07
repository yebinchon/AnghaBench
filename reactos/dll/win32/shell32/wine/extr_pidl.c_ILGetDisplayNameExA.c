
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPSTR ;
typedef int LPSHELLFOLDER ;
typedef int LPCITEMIDLIST ;
typedef int DWORD ;
typedef int BOOL ;


 int CP_ACP ;
 int FALSE ;
 int ILGetDisplayNameExW (int ,int ,int *,int ) ;
 int MAX_PATH ;
 int TRACE (char*,int ,int ,int ,...) ;
 int WideCharToMultiByte (int ,int ,int *,int,int ,int,int *,int *) ;
 int debugstr_a (int ) ;

__attribute__((used)) static BOOL ILGetDisplayNameExA(LPSHELLFOLDER psf, LPCITEMIDLIST pidl, LPSTR path, DWORD type)
{
    BOOL ret = FALSE;
    WCHAR wPath[MAX_PATH];

    TRACE("%p %p %p %d\n", psf, pidl, path, type);

    if (!pidl || !path)
        return FALSE;

    ret = ILGetDisplayNameExW(psf, pidl, wPath, type);
    WideCharToMultiByte(CP_ACP, 0, wPath, -1, path, MAX_PATH, ((void*)0), ((void*)0));
    TRACE("%p %p %s\n", psf, pidl, debugstr_a(path));

    return ret;
}
