
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int PathCombineA (char*,int ,int ) ;
 int TRUE ;
 int WriteFile (scalar_t__,char*,int ,int *,int *) ;
 int free (char*) ;
 char* malloc (int ) ;
 int memset (char*,int,int ) ;

__attribute__((used)) static BOOL create_file(LPCSTR dir, LPCSTR name, int filler, DWORD size)
{
    char target[MAX_PATH], *tmp;
    HANDLE file;
    PathCombineA(target, dir, name);

    tmp = malloc(size);
    memset(tmp, filler, size);

    file = CreateFileA(target, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if(file == INVALID_HANDLE_VALUE)
        return FALSE;

    WriteFile(file, tmp, size, &size, ((void*)0));
    CloseHandle(file);
    free(tmp);
    return TRUE;
}
