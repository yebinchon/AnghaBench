
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* LPVOID ;
typedef int LPTSTR ;
typedef int HRSRC ;
typedef int HGLOBAL ;
typedef int DWORD ;


 int FindResource (int *,int ,int ) ;
 int LoadResource (int ,int ) ;
 void* LockResource (int ) ;
 int MAKEINTRESOURCE (int) ;
 int SizeofResource (int ,int ) ;

__attribute__((used)) static void* extract_rcdata (LPTSTR name, int type, DWORD* size)
{
    HRSRC rsrc;
    HGLOBAL hdl;
    LPVOID addr;

    if (!(rsrc = FindResource (((void*)0), name, MAKEINTRESOURCE(type))) ||
        !(*size = SizeofResource (0, rsrc)) ||
        !(hdl = LoadResource (0, rsrc)) ||
        !(addr = LockResource (hdl)))
        return ((void*)0);
    return addr;
}
