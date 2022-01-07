
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int systemDirx86 ;
typedef int systemDir ;


 int CSIDL_SYSTEM ;
 int CSIDL_SYSTEMX86 ;
 int FALSE ;
 int GetSystemDirectoryA (char*,int) ;
 int MAX_PATH ;
 scalar_t__ broken (int) ;
 int lstrcmpiA (char*,char*) ;
 int myPathRemoveBackslashA (char*) ;
 int ok (int,char*,char*,char*) ;
 int pGetSystemWow64DirectoryA (char*,int) ;
 scalar_t__ pSHGetSpecialFolderPathA (int *,char*,int ,int ) ;

__attribute__((used)) static void testSystemDir(void)
{
    char systemShellPath[MAX_PATH], systemDir[MAX_PATH], systemDirx86[MAX_PATH];

    if (!pSHGetSpecialFolderPathA) return;

    GetSystemDirectoryA(systemDir, sizeof(systemDir));
    myPathRemoveBackslashA(systemDir);
    if (pSHGetSpecialFolderPathA(((void*)0), systemShellPath, CSIDL_SYSTEM, FALSE))
    {
        myPathRemoveBackslashA(systemShellPath);
        ok(!lstrcmpiA(systemDir, systemShellPath),
         "GetSystemDirectory returns %s SHGetSpecialFolderPath returns %s\n",
         systemDir, systemShellPath);
    }

    if (!pGetSystemWow64DirectoryA || !pGetSystemWow64DirectoryA(systemDirx86, sizeof(systemDirx86)))
        GetSystemDirectoryA(systemDirx86, sizeof(systemDirx86));
    myPathRemoveBackslashA(systemDirx86);
    if (pSHGetSpecialFolderPathA(((void*)0), systemShellPath, CSIDL_SYSTEMX86, FALSE))
    {
        myPathRemoveBackslashA(systemShellPath);
        ok(!lstrcmpiA(systemDirx86, systemShellPath) || broken(!lstrcmpiA(systemDir, systemShellPath)),
         "GetSystemDirectory returns %s SHGetSpecialFolderPath returns %s\n",
         systemDir, systemShellPath);
    }
}
