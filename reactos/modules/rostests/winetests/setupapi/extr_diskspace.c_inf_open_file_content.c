
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HINF ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int,int,int *,int ,int ,int ) ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int INF_STYLE_WIN4 ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SetupOpenInfFileA (char const*,int ,int ,int *) ;
 int WriteFile (scalar_t__,char const*,int ,int *,int *) ;
 int strlen (char const*) ;
 int trace (char*) ;

__attribute__((used)) static HINF inf_open_file_content(const char * tmpfilename, const char *data, UINT *err_line)
{
    DWORD res;
    HANDLE handle = CreateFileA(tmpfilename, GENERIC_READ|GENERIC_WRITE,
                                FILE_SHARE_READ|FILE_SHARE_WRITE, ((void*)0), CREATE_ALWAYS, 0, 0);
    if (handle == INVALID_HANDLE_VALUE) return 0;
    if (!WriteFile( handle, data, strlen(data), &res, ((void*)0) )) trace( "write error\n" );
    CloseHandle( handle );
    return SetupOpenInfFileA( tmpfilename, 0, INF_STYLE_WIN4, err_line );
}
