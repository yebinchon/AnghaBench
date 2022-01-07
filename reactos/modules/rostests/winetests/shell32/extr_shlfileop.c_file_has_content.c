
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef size_t DWORD ;
typedef scalar_t__ CHAR ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (scalar_t__ const*,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int GENERIC_READ ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,scalar_t__*,int,size_t*,int *) ;
 scalar_t__ strcmp (scalar_t__*,scalar_t__ const*) ;

__attribute__((used)) static BOOL file_has_content(const CHAR *name, const CHAR *content)
{
    CHAR buf[MAX_PATH];
    HANDLE file;
    DWORD read;

    file = CreateFileA(name, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    if (file == INVALID_HANDLE_VALUE)
        return FALSE;
    ReadFile(file, buf, MAX_PATH - 1, &read, ((void*)0));
    buf[read] = 0;
    CloseHandle(file);
    return strcmp(buf, content)==0;
}
