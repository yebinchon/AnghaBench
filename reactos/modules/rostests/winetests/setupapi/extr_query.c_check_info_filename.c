
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PSP_INF_INFORMATION ;
typedef int * LPSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int SetupQueryInfFileInformationA (int ,int ,int *,int ,int *) ;
 int TRUE ;
 int lstrcmpiA (int *,int *) ;

__attribute__((used)) static BOOL check_info_filename(PSP_INF_INFORMATION info, LPSTR test)
{
    LPSTR filename;
    DWORD size;
    BOOL ret = FALSE;

    if (!SetupQueryInfFileInformationA(info, 0, ((void*)0), 0, &size))
        return FALSE;

    filename = HeapAlloc(GetProcessHeap(), 0, size);
    if (!filename)
        return FALSE;

    SetupQueryInfFileInformationA(info, 0, filename, size, &size);

    if (!lstrcmpiA(test, filename))
        ret = TRUE;

    HeapFree(GetProcessHeap(), 0, filename);
    return ret;
}
