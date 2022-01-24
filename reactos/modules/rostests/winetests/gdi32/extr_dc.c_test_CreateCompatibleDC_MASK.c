#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int dmScale; } ;
struct TYPE_8__ {TYPE_1__ s1; } ;
struct TYPE_9__ {int /*<<< orphan*/  dmFields; TYPE_2__ u1; } ;
typedef  int /*<<< orphan*/ * INT ;
typedef  int /*<<< orphan*/ * HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  TYPE_3__ DEVMODEA ;
typedef  int /*<<< orphan*/ * BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DM_SCALE ; 
 int /*<<< orphan*/ * DT_METAFILE ; 
 int /*<<< orphan*/ * DT_RASDISPLAY ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENUM_CURRENT_SETTINGS ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TECHNOLOGY ; 
 int /*<<< orphan*/ * TRUE ; 
 int /*<<< orphan*/  FUNC17 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC19(void)
{
    BOOL bRet;
    HDC hdc, hNewDC, hdcMetafile, screen_dc;
    HBITMAP bitmap;
    INT caps;
    DEVMODEA dm;

    bitmap = FUNC2( 10, 10, 1, 1, NULL );

    bRet = FUNC11(NULL, ENUM_CURRENT_SETTINGS, &dm);
    FUNC17(*bRet, "EnumDisplaySettingsEx failed\n");
    dm.u1.s1.dmScale = 200;
    dm.dmFields |= DM_SCALE;
    hdc = FUNC4( "DISPLAY", NULL, NULL, &dm );

    screen_dc = FUNC4( "DISPLAY", NULL, NULL, NULL );
    FUNC18( hdc, screen_dc, "display dc", 1 );
    FUNC15( hdc, &dm );
    FUNC18( hdc, screen_dc, "display dc", 1 );
    FUNC7( hdc );

    /* Create a DC compatible with the screen */
    hdc = FUNC3(NULL);
    FUNC17(hdc != NULL, "CreateCompatibleDC returned %p\n", hdc);
    FUNC17( FUNC16( hdc, bitmap ) != 0, "SelectObject failed\n" );
    caps = FUNC13( hdc, TECHNOLOGY );
    FUNC17( caps == DT_RASDISPLAY, "wrong caps %u\n", caps );

    FUNC18( hdc, screen_dc, "display dc", 1 );

    /* Delete this DC, this should succeed */
    bRet = FUNC7(hdc);
    FUNC17(bRet == TRUE, "DeleteDC returned %u\n", bRet);

    /* Try to create a DC compatible to the deleted DC. This has to fail */
    hNewDC = FUNC3(hdc);
    FUNC17(hNewDC == NULL, "CreateCompatibleDC returned %p\n", hNewDC);

    hdc = FUNC12( 0 );
    hdcMetafile = FUNC5(hdc, NULL, NULL, NULL);
    FUNC17(hdcMetafile != 0, "CreateEnhMetaFileA failed\n");
    hNewDC = FUNC3( hdcMetafile );
    FUNC17(hNewDC != NULL, "CreateCompatibleDC failed\n");
    FUNC17( FUNC16( hNewDC, bitmap ) != 0, "SelectObject failed\n" );
    caps = FUNC13( hdcMetafile, TECHNOLOGY );
    FUNC17( caps == DT_RASDISPLAY, "wrong caps %u\n", caps );
    FUNC18( hdcMetafile, hdc, "enhmetafile dc", 1 );
    FUNC15( hdcMetafile, &dm );
    FUNC18( hdcMetafile, hdc, "enhmetafile dc", 1 );
    FUNC7( hNewDC );
    FUNC8( FUNC0( hdcMetafile ));
    FUNC14( 0, hdc );

    hdcMetafile = FUNC6(NULL);
    FUNC17(hdcMetafile != 0, "CreateEnhMetaFileA failed\n");
    hNewDC = FUNC3( hdcMetafile );
    FUNC17(hNewDC == NULL, "CreateCompatibleDC succeeded\n");
    caps = FUNC13( hdcMetafile, TECHNOLOGY );
    FUNC17( caps == DT_METAFILE, "wrong caps %u\n", caps );
    FUNC18( hdcMetafile, screen_dc, "metafile dc", 1 );
    FUNC15( hdcMetafile, &dm );
    FUNC18( hdcMetafile, screen_dc, "metafile dc", 1 );
    FUNC9( FUNC1( hdcMetafile ));

    FUNC10( bitmap );
    FUNC7( screen_dc );
}