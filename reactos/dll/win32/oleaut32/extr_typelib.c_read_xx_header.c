
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mzh ;
struct TYPE_2__ {scalar_t__ e_magic; int e_lfanew; } ;
typedef char* LPSTR ;
typedef TYPE_1__ IMAGE_DOS_HEADER ;
typedef int HFILE ;


 scalar_t__ IMAGE_DOS_SIGNATURE ;
 int IMAGE_NT_SIGNATURE ;
 int IMAGE_OS2_SIGNATURE ;
 int LZRead (int ,char*,int) ;
 int LZSeek (int ,int ,int ) ;
 int SEEK_SET ;
 int WARN (char*,char*) ;

__attribute__((used)) static int read_xx_header( HFILE lzfd )
{
    IMAGE_DOS_HEADER mzh;
    char magic[3];

    LZSeek( lzfd, 0, SEEK_SET );
    if ( sizeof(mzh) != LZRead( lzfd, (LPSTR)&mzh, sizeof(mzh) ) )
        return 0;
    if ( mzh.e_magic != IMAGE_DOS_SIGNATURE )
        return 0;

    LZSeek( lzfd, mzh.e_lfanew, SEEK_SET );
    if ( 2 != LZRead( lzfd, magic, 2 ) )
        return 0;

    LZSeek( lzfd, mzh.e_lfanew, SEEK_SET );

    if ( magic[0] == 'N' && magic[1] == 'E' )
        return IMAGE_OS2_SIGNATURE;
    if ( magic[0] == 'P' && magic[1] == 'E' )
        return IMAGE_NT_SIGNATURE;

    magic[2] = '\0';
    WARN("Can't handle %s files.\n", magic );
    return 0;
}
