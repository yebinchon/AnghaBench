
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int CHAR ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int const*,int ,int ,int *,int ,int ,int *) ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;

__attribute__((used)) static int getFileSize(const CHAR *name)
{
    HANDLE file;
    int size;
    file = CreateFileA(name, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    if (file == INVALID_HANDLE_VALUE)
        return -1;
    size = GetFileSize(file, ((void*)0));
    CloseHandle(file);
    return size;
}
