
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;
typedef int LPCSTR ;
typedef int HANDLE ;
typedef int DWORD ;


 int CloseHandle (int ) ;
 int CreateFileA (int ,int ,int ,int *,int ,int ,int *) ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int ReadFile (int ,int ,int ,int *,int *) ;
 int ZeroMemory (int ,int ) ;

__attribute__((used)) static void read_file_data(LPCSTR filename, LPSTR buffer)
{
    HANDLE file;
    DWORD read;

    file = CreateFileA( filename, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0) );
    ZeroMemory(buffer, MAX_PATH);
    ReadFile(file, buffer, MAX_PATH, &read, ((void*)0));
    CloseHandle(file);
}
