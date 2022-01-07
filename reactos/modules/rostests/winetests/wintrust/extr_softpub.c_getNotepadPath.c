
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;
typedef char CHAR ;


 int CP_ACP ;
 int GetWindowsDirectoryA (char*,int) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int ) ;
 int lstrcatA (char*,char const*) ;

__attribute__((used)) static void getNotepadPath(WCHAR *notepadPathW, DWORD size)
{
    static const CHAR notepad[] = "\\notepad.exe";
    CHAR notepadPath[MAX_PATH];


    GetWindowsDirectoryA(notepadPath, MAX_PATH);
    lstrcatA(notepadPath, notepad);
    MultiByteToWideChar(CP_ACP, 0, notepadPath, -1, notepadPathW, size);
}
