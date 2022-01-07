
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int biWidth; int biHeight; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; } ;
typedef int HGLOBAL ;
typedef TYPE_2__ BITMAPINFO ;


 TYPE_2__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int ok (int,char*,int,int) ;

__attribute__((used)) static void check_dib_size( HGLOBAL h, int cx, int cy )
{
    BITMAPINFO *info;

    info = GlobalLock( h );
    ok( info->bmiHeader.biWidth == cx, "got %d expect %d\n", info->bmiHeader.biWidth, cx );
    ok( info->bmiHeader.biHeight == cy, "got %d expect %d\n", info->bmiHeader.biHeight, cy );
    GlobalUnlock( h );
}
