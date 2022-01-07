
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ MSIHANDLE ;
typedef char* LPCSTR ;
typedef int DWORD ;
typedef int CHAR ;


 int DeleteFileA (int ) ;
 int ERROR_BAD_QUERY_SYNTAX ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_INSTALL_PACKAGE_REJECTED ;
 int ERROR_INVALID_HANDLE ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int MAX_PATH ;
 int MsiCloseHandle (scalar_t__) ;
 scalar_t__ MsiGetActiveDatabase (scalar_t__) ;
 int MsiGetPropertyA (scalar_t__,char*,int *,int*) ;
 int MsiSetPropertyA (scalar_t__,char*,char*) ;
 int create_package_db () ;
 int do_query (scalar_t__,char*,scalar_t__*) ;
 int lstrcmpA (int *,char*) ;
 int msifile ;
 int ok (int,char*,...) ;
 int package_from_db (int ,scalar_t__*) ;
 int skip (char*) ;

__attribute__((used)) static void test_MsiSetProperty(void)
{
    MSIHANDLE hpkg, hdb, hrec;
    CHAR buf[MAX_PATH];
    LPCSTR query;
    DWORD size;
    UINT r;

    r = package_from_db(create_package_db(), &hpkg);
    if (r == ERROR_INSTALL_PACKAGE_REJECTED)
    {
        skip("Not enough rights to perform tests\n");
        DeleteFileA(msifile);
        return;
    }
    ok(r == ERROR_SUCCESS, "Expected a valid package %u\n", r);


    r = MsiSetPropertyA(0, "Prop", "Val");
    ok(r == ERROR_INVALID_HANDLE,
       "Expected ERROR_INVALID_HANDLE, got %d\n", r);


    r = MsiSetPropertyA(0xdeadbeef, "Prop", "Val");
    ok(r == ERROR_INVALID_HANDLE,
       "Expected ERROR_INVALID_HANDLE, got %d\n", r);


    r = MsiSetPropertyA(hpkg, ((void*)0), "Val");
    ok(r == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", r);


    r = MsiSetPropertyA(hpkg, ((void*)0), ((void*)0));
    ok(r == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", r);


    r = MsiSetPropertyA(hpkg, "", "Val");
    ok(r == ERROR_FUNCTION_FAILED,
       "Expected ERROR_FUNCTION_FAILED, got %d\n", r);


    r = MsiSetPropertyA(hpkg, "", ((void*)0));
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);


    r = MsiSetPropertyA(hpkg, "Prop", "Val");
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);


    size = MAX_PATH;
    r = MsiGetPropertyA(hpkg, "Prop", buf, &size);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(buf, "Val"), "Expected \"Val\", got \"%s\"\n", buf);
    ok(size == 3, "Expected 3, got %d\n", size);


    r = MsiSetPropertyA(hpkg, "Prop", "Nuvo");
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);


    size = MAX_PATH;
    r = MsiGetPropertyA(hpkg, "Prop", buf, &size);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(buf, "Nuvo"), "Expected \"Nuvo\", got \"%s\"\n", buf);
    ok(size == 4, "Expected 4, got %d\n", size);

    hdb = MsiGetActiveDatabase(hpkg);
    ok(hdb != 0, "Expected a valid database handle\n");


    query = "SELECT * FROM `_Property` WHERE `Property` = 'Prop'";
    r = do_query(hdb, query, &hrec);
    ok(r == ERROR_BAD_QUERY_SYNTAX,
       "Expected ERROR_BAD_QUERY_SYNTAX, got %d\n", r);


    query = "SELECT * FROM `Property` WHERE `Property` = 'Prop'";
    r = do_query(hdb, query, &hrec);
    ok(r == ERROR_BAD_QUERY_SYNTAX,
       "Expected ERROR_BAD_QUERY_SYNTAX, got %d\n", r);

    MsiCloseHandle(hdb);


    r = MsiSetPropertyA(hpkg, "Prop", "");
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);


    size = MAX_PATH;
    r = MsiGetPropertyA(hpkg, "Prop", buf, &size);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(buf, ""), "Expected \"\", got \"%s\"\n", buf);
    ok(size == 0, "Expected 0, got %d\n", size);


    r = MsiSetPropertyA(hpkg, "Prop", "BlueTap");
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);


    r = MsiSetPropertyA(hpkg, "Prop", ((void*)0));
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);


    size = MAX_PATH;
    r = MsiGetPropertyA(hpkg, "Prop", buf, &size);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);
    ok(!lstrcmpA(buf, ""), "Expected \"\", got \"%s\"\n", buf);
    ok(size == 0, "Expected 0, got %d\n", size);

    MsiCloseHandle(hpkg);
    DeleteFileA(msifile);
}
