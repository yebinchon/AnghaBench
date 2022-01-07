
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwHighDateTime; int dwLowDateTime; } ;
typedef int LPBYTE ;
typedef TYPE_1__ FILETIME ;
typedef int DWORD ;


 int write_dword (int ,int,int ) ;

__attribute__((used)) static DWORD write_filetime( LPBYTE data, DWORD ofs, const FILETIME *ft )
{
    write_dword( data, ofs, ft->dwLowDateTime );
    write_dword( data, ofs + 4, ft->dwHighDateTime );
    return 8;
}
