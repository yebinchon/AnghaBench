
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int DeleteFileA (char*) ;
 int GetLastError () ;
 int MAX_PATH ;
 int RemoveDirectoryA (char const*) ;
 int ok (int ,char*,int ) ;
 int sprintf (char*,char*,char const*) ;
 char* tmpdir () ;

void cleanup_msvc_dll()
{
    char szFile[MAX_PATH];
    BOOL ret;
    const char* dir = tmpdir();

    sprintf(szFile, "%s\\uffs.pdb", dir);
    ret = DeleteFileA(szFile);
    ok(ret, "DeleteFileA failed(%d)\n", GetLastError());

    sprintf(szFile, "%s\\uffs.dll", dir);
    ret = DeleteFileA(szFile);
    ok(ret, "DeleteFileA failed(%d)\n", GetLastError());
    ret = RemoveDirectoryA(dir);
    ok(ret, "RemoveDirectoryA failed(%d)\n", GetLastError());
}
