
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bm ;
struct TYPE_3__ {int bmWidth; int bmHeight; } ;
typedef int HBITMAP ;
typedef TYPE_1__ BITMAP ;


 int GetObjectW (int ,int,TYPE_1__*) ;
 int ok (int,char*,int,int) ;

__attribute__((used)) static void check_bitmap_size( HBITMAP h, int cx, int cy )
{
    BITMAP bm;

    GetObjectW( h, sizeof(bm), &bm );
    ok( bm.bmWidth == cx, "got %d expect %d\n", bm.bmWidth, cx );
    ok( bm.bmHeight == cy, "got %d expect %d\n", bm.bmHeight, cy );
}
