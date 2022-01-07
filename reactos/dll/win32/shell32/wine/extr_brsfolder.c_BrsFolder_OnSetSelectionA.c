
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int browse_info ;
typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int * LPVOID ;
typedef int BOOL ;


 int BrsFolder_OnSetSelectionW (int *,int *,int ) ;
 int CP_ACP ;
 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int MultiByteToWideChar (int ,int ,int *,int,int *,int) ;

__attribute__((used)) static BOOL BrsFolder_OnSetSelectionA(browse_info *info, LPVOID selection, BOOL is_str) {
    LPWSTR selectionW = ((void*)0);
    BOOL result = FALSE;
    int length;

    if (!is_str)
        return BrsFolder_OnSetSelectionW(info, selection, is_str);

    if ((length = MultiByteToWideChar(CP_ACP, 0, selection, -1, ((void*)0), 0)) &&
        (selectionW = HeapAlloc(GetProcessHeap(), 0, length * sizeof(WCHAR))) &&
        MultiByteToWideChar(CP_ACP, 0, selection, -1, selectionW, length))
    {
        result = BrsFolder_OnSetSelectionW(info, selectionW, is_str);
    }

    HeapFree(GetProcessHeap(), 0, selectionW);
    return result;
}
