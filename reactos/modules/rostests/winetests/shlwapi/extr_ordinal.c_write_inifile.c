
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef int LPCWSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int TRUE ;
 int WriteFile (scalar_t__,char const*,int,int *,int *) ;
 int win_skip (char*,int ) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static BOOL write_inifile(LPCWSTR filename)
{
    DWORD written;
    HANDLE file;

    static const char data[] =
        "[TestApp]\r\n"
        "AKey=1\r\n"
        "AnotherKey=asdf\r\n";

    file = CreateFileW(filename, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, ((void*)0));
    if(file == INVALID_HANDLE_VALUE) {
        win_skip("failed to create ini file at %s\n", wine_dbgstr_w(filename));
        return FALSE;
    }

    WriteFile(file, data, sizeof(data), &written, ((void*)0));

    CloseHandle(file);

    return TRUE;
}
