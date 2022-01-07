
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HFILE ;
typedef int DWORD ;




 int find_ne_resource (int ,int*,int*) ;
 int find_pe_resource (int ,int*,int*,int) ;
 int read_xx_header (int ) ;

__attribute__((used)) static DWORD find_version_resource( HFILE lzfd, DWORD *reslen, DWORD *offset, DWORD flags )
{
    DWORD magic = read_xx_header( lzfd );

    switch (magic)
    {
    case 128:
        if (!find_ne_resource( lzfd, reslen, offset )) magic = 0;
        break;
    case 129:
        if (!find_pe_resource( lzfd, reslen, offset, flags )) magic = 0;
        break;
    }
    return magic;
}
