
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int DWORD ;
typedef int BYTE ;


 int ERROR_FILE_NOT_FOUND ;
 int ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int REG_SZ ;
 int RegQueryValueExA (int ,char*,int *,int*,int *,int*) ;
 int hkey_main ;
 int ok (int,char*,int,...) ;
 int sTestpath1 ;
 int strlen (int ) ;

__attribute__((used)) static void test_query_value_ex(void)
{
    DWORD ret, size, type;
    BYTE buffer[10];

    size = sizeof(buffer);
    ret = RegQueryValueExA(hkey_main, "TP1_SZ", ((void*)0), &type, ((void*)0), &size);
    ok(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);
    ok(size == strlen(sTestpath1) + 1, "(%d,%d)\n", (DWORD)strlen(sTestpath1) + 1, size);
    ok(type == REG_SZ, "type %d is not REG_SZ\n", type);

    type = 0xdeadbeef;
    size = 0xdeadbeef;
    ret = RegQueryValueExA(HKEY_CLASSES_ROOT, "Nonexistent Value", ((void*)0), &type, ((void*)0), &size);
    ok(ret == ERROR_FILE_NOT_FOUND, "expected ERROR_FILE_NOT_FOUND, got %d\n", ret);
    ok(size == 0, "size should have been set to 0 instead of %d\n", size);

    size = sizeof(buffer);
    ret = RegQueryValueExA(HKEY_CLASSES_ROOT, "Nonexistent Value", ((void*)0), &type, buffer, &size);
    ok(ret == ERROR_FILE_NOT_FOUND, "expected ERROR_FILE_NOT_FOUND, got %d\n", ret);
    ok(size == sizeof(buffer), "size shouldn't have been changed to %d\n", size);

    size = 4;
    ret = RegQueryValueExA(hkey_main, "BIN32", ((void*)0), &size, buffer, &size);
    ok(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);
}
