
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef scalar_t__ HANDLE ;


 int CREATE_NEW ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int ok (int,char*) ;

__attribute__((used)) static void touch_file(LPCWSTR filename)
{
    HANDLE file;
    file = CreateFileW(filename, GENERIC_WRITE, 0, ((void*)0), CREATE_NEW, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "Failed to create file.\n");
    CloseHandle(file);
}
