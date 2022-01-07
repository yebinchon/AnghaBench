
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int bmp ;
typedef int bits ;
struct TYPE_6__ {int bmBits; } ;
typedef int * HBITMAP ;
typedef TYPE_1__ BYTE ;
typedef TYPE_1__ BITMAP ;


 int * CreateBitmap (int,int,int,int,TYPE_1__*) ;
 int DeleteObject (int *) ;
 int GetObjectW (int *,int,TYPE_1__*) ;
 int memset (TYPE_1__*,int,int) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_bmBits(void)
{
    BYTE bits[4];
    HBITMAP hbmp;
    BITMAP bmp;

    memset(bits, 0, sizeof(bits));
    hbmp = CreateBitmap(2, 2, 1, 4, bits);
    ok(hbmp != ((void*)0), "CreateBitmap failed\n");

    memset(&bmp, 0xFF, sizeof(bmp));
    ok(GetObjectW(hbmp, sizeof(bmp), &bmp) == sizeof(bmp),
       "GetObject failed or returned a wrong structure size\n");
    ok(!bmp.bmBits, "bmBits must be NULL for device-dependent bitmaps\n");

    DeleteObject(hbmp);
}
