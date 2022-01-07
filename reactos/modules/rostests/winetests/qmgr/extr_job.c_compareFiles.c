
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int *,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,char*,int,scalar_t__*,int *) ;
 scalar_t__ memcmp (char*,char*,scalar_t__) ;
 int ok (int,char*) ;

__attribute__((used)) static void compareFiles(WCHAR *n1, WCHAR *n2)
{
    char b1[256];
    char b2[256];
    DWORD s1, s2;
    HANDLE f1, f2;

    f1 = CreateFileW(n1, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING,
                     FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(f1 != INVALID_HANDLE_VALUE, "CreateFile\n");

    f2 = CreateFileW(n2, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING,
                     FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(f2 != INVALID_HANDLE_VALUE, "CreateFile\n");


    ok(ReadFile(f1, b1, sizeof b1, &s1, ((void*)0)), "ReadFile\n");
    ok(ReadFile(f2, b2, sizeof b2, &s2, ((void*)0)), "ReadFile\n");

    CloseHandle(f1);
    CloseHandle(f2);

    ok(s1 == s2, "Files differ in length\n");
    ok(memcmp(b1, b2, s1) == 0, "Files differ in contents\n");
}
