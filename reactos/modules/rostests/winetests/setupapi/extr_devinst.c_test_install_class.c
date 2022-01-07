
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 int DI_NOVCP ;
 int DeleteFileA (char*) ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 int HKEY_LOCAL_MACHINE ;
 int MAX_PATH ;
 int RegDeleteKeyW (int ,char const*) ;
 int SetupDiInstallClassA (int *,char*,int ,int *) ;
 int create_inf_file (char*) ;
 int get_temp_filename (char*) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_install_class(void)
{
    static const WCHAR classKey[] = {'S','y','s','t','e','m','\\',
     'C','u','r','r','e','n','t','C','o','n','t','r','o','l','S','e','t','\\',
     'C','o','n','t','r','o','l','\\','C','l','a','s','s','\\',
     '{','6','a','5','5','b','5','a','4','-','3','f','6','5','-',
     '1','1','d','b','-','b','7','0','4','-',
     '0','0','1','1','9','5','5','c','2','b','d','b','}',0};
    char tmpfile[MAX_PATH];
    BOOL ret;

    tmpfile[0] = '.';
    tmpfile[1] = '\\';
    get_temp_filename(tmpfile + 2);
    create_inf_file(tmpfile + 2);

    ret = SetupDiInstallClassA(((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    ret = SetupDiInstallClassA(((void*)0), ((void*)0), DI_NOVCP, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    ret = SetupDiInstallClassA(((void*)0), tmpfile + 2, DI_NOVCP, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "Got unexpected error %#x.\n", GetLastError());

    ret = SetupDiInstallClassA(((void*)0), tmpfile + 2, 0, ((void*)0));
    ok(!ret, "Expected failure.\n");
    ok(GetLastError() == ERROR_FILE_NOT_FOUND, "Got unexpected error %#x.\n", GetLastError());




    ret = SetupDiInstallClassA(((void*)0), tmpfile, 0, ((void*)0));
    ok(ret, "Failed to install class, error %#x.\n", GetLastError());

    ok(!RegDeleteKeyW(HKEY_LOCAL_MACHINE, classKey), "Failed to delete class key, error %u.\n", GetLastError());
    DeleteFileA(tmpfile);
}
