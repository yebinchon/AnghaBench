
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ HANDLE ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int const*,int ,int ,int *,int ,int ,int *) ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int ok (int,char*) ;

__attribute__((used)) static void createTestFileW(const WCHAR *name)
{
    HANDLE file;

    file = CreateFileW(name, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "Failure to open file\n");
    CloseHandle(file);
}
