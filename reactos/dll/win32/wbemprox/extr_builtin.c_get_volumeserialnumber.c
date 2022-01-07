
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;


 int GetVolumeInformationW (char const*,int *,int ,int *,int *,int *,int *,int ) ;
 char* heap_strdupW (char*) ;
 int sprintfW (char*,char const*,int ) ;

__attribute__((used)) static WCHAR *get_volumeserialnumber( const WCHAR *root )
{
    static const WCHAR fmtW[] = {'%','0','8','X',0};
    DWORD serial = 0;
    WCHAR buffer[9];

    GetVolumeInformationW( root, ((void*)0), 0, &serial, ((void*)0), ((void*)0), ((void*)0), 0 );
    sprintfW( buffer, fmtW, serial );
    return heap_strdupW( buffer );
}
