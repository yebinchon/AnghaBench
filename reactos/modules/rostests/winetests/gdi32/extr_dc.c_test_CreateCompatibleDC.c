
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dmScale; } ;
struct TYPE_8__ {TYPE_1__ s1; } ;
struct TYPE_9__ {int dmFields; TYPE_2__ u1; } ;
typedef int * INT ;
typedef int * HDC ;
typedef int HBITMAP ;
typedef TYPE_3__ DEVMODEA ;
typedef int * BOOL ;


 int CloseEnhMetaFile (int *) ;
 int CloseMetaFile (int *) ;
 int CreateBitmap (int,int,int,int,int *) ;
 int * CreateCompatibleDC (int *) ;
 int * CreateDCA (char*,int *,int *,TYPE_3__*) ;
 int * CreateEnhMetaFileA (int *,int *,int *,int *) ;
 int * CreateMetaFileA (int *) ;
 int DM_SCALE ;
 int * DT_METAFILE ;
 int * DT_RASDISPLAY ;
 int * DeleteDC (int *) ;
 int DeleteEnhMetaFile (int ) ;
 int DeleteMetaFile (int ) ;
 int DeleteObject (int ) ;
 int ENUM_CURRENT_SETTINGS ;
 int * EnumDisplaySettingsA (int *,int ,TYPE_3__*) ;
 int * GetDC (int ) ;
 int * GetDeviceCaps (int *,int ) ;
 int ReleaseDC (int ,int *) ;
 int ResetDCA (int *,TYPE_3__*) ;
 scalar_t__ SelectObject (int *,int ) ;
 int TECHNOLOGY ;
 int * TRUE ;
 int ok (int,char*,...) ;
 int test_device_caps (int *,int *,char*,int) ;

__attribute__((used)) static void test_CreateCompatibleDC(void)
{
    BOOL bRet;
    HDC hdc, hNewDC, hdcMetafile, screen_dc;
    HBITMAP bitmap;
    INT caps;
    DEVMODEA dm;

    bitmap = CreateBitmap( 10, 10, 1, 1, ((void*)0) );

    bRet = EnumDisplaySettingsA(((void*)0), ENUM_CURRENT_SETTINGS, &dm);
    ok(bRet, "EnumDisplaySettingsEx failed\n");
    dm.u1.s1.dmScale = 200;
    dm.dmFields |= DM_SCALE;
    hdc = CreateDCA( "DISPLAY", ((void*)0), ((void*)0), &dm );

    screen_dc = CreateDCA( "DISPLAY", ((void*)0), ((void*)0), ((void*)0) );
    test_device_caps( hdc, screen_dc, "display dc", 1 );
    ResetDCA( hdc, &dm );
    test_device_caps( hdc, screen_dc, "display dc", 1 );
    DeleteDC( hdc );


    hdc = CreateCompatibleDC(((void*)0));
    ok(hdc != ((void*)0), "CreateCompatibleDC returned %p\n", hdc);
    ok( SelectObject( hdc, bitmap ) != 0, "SelectObject failed\n" );
    caps = GetDeviceCaps( hdc, TECHNOLOGY );
    ok( caps == DT_RASDISPLAY, "wrong caps %u\n", caps );

    test_device_caps( hdc, screen_dc, "display dc", 1 );


    bRet = DeleteDC(hdc);
    ok(bRet == TRUE, "DeleteDC returned %u\n", bRet);


    hNewDC = CreateCompatibleDC(hdc);
    ok(hNewDC == ((void*)0), "CreateCompatibleDC returned %p\n", hNewDC);

    hdc = GetDC( 0 );
    hdcMetafile = CreateEnhMetaFileA(hdc, ((void*)0), ((void*)0), ((void*)0));
    ok(hdcMetafile != 0, "CreateEnhMetaFileA failed\n");
    hNewDC = CreateCompatibleDC( hdcMetafile );
    ok(hNewDC != ((void*)0), "CreateCompatibleDC failed\n");
    ok( SelectObject( hNewDC, bitmap ) != 0, "SelectObject failed\n" );
    caps = GetDeviceCaps( hdcMetafile, TECHNOLOGY );
    ok( caps == DT_RASDISPLAY, "wrong caps %u\n", caps );
    test_device_caps( hdcMetafile, hdc, "enhmetafile dc", 1 );
    ResetDCA( hdcMetafile, &dm );
    test_device_caps( hdcMetafile, hdc, "enhmetafile dc", 1 );
    DeleteDC( hNewDC );
    DeleteEnhMetaFile( CloseEnhMetaFile( hdcMetafile ));
    ReleaseDC( 0, hdc );

    hdcMetafile = CreateMetaFileA(((void*)0));
    ok(hdcMetafile != 0, "CreateEnhMetaFileA failed\n");
    hNewDC = CreateCompatibleDC( hdcMetafile );
    ok(hNewDC == ((void*)0), "CreateCompatibleDC succeeded\n");
    caps = GetDeviceCaps( hdcMetafile, TECHNOLOGY );
    ok( caps == DT_METAFILE, "wrong caps %u\n", caps );
    test_device_caps( hdcMetafile, screen_dc, "metafile dc", 1 );
    ResetDCA( hdcMetafile, &dm );
    test_device_caps( hdcMetafile, screen_dc, "metafile dc", 1 );
    DeleteMetaFile( CloseMetaFile( hdcMetafile ));

    DeleteObject( bitmap );
    DeleteDC( screen_dc );
}
