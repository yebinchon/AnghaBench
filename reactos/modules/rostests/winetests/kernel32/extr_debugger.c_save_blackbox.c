
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int ,int ,int *,int ,int ,int ) ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WriteFile (scalar_t__,void*,int,int *,int *) ;

__attribute__((used)) static void save_blackbox(const char* logfile, void* blackbox, int size)
{
    HANDLE hFile;
    DWORD written;

    hFile=CreateFileA(logfile, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, 0);
    if (hFile == INVALID_HANDLE_VALUE)
        return;
    WriteFile(hFile, blackbox, size, &written, ((void*)0));
    CloseHandle(hFile);
}
