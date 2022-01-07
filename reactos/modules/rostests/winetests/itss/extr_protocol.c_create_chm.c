
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRSRC ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FindResourceA (int *,int ,int ) ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LoadResource (int *,int ) ;
 int MAKEINTRESOURCEA (int) ;
 int SizeofResource (int *,int ) ;
 int TRUE ;
 int WriteFile (scalar_t__,int ,int ,int *,int *) ;
 int ok (int,char*) ;

__attribute__((used)) static BOOL create_chm(void)
{
    HANDLE file;
    HRSRC src;
    DWORD size;

    file = CreateFileA("test.chm", GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
            FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "Could not create test.chm file\n");
    if(file == INVALID_HANDLE_VALUE)
        return FALSE;

    src = FindResourceA(((void*)0), MAKEINTRESOURCEA(60), MAKEINTRESOURCEA(60));

    WriteFile(file, LoadResource(((void*)0), src), SizeofResource(((void*)0), src), &size, ((void*)0));
    CloseHandle(file);

    return TRUE;
}
