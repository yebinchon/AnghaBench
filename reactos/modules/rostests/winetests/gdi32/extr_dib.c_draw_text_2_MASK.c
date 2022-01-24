#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_12__ ;
typedef  struct TYPE_22__   TYPE_11__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lf ;
typedef  int /*<<< orphan*/  g_buf ;
struct TYPE_27__ {int member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_26__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_25__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_24__ {int member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_32__ {TYPE_4__ member_3; TYPE_3__ member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;
struct TYPE_31__ {int x; int y; } ;
struct TYPE_30__ {int tmPitchAndFamily; } ;
struct TYPE_29__ {int x; int y; } ;
struct TYPE_28__ {int biBitCount; } ;
struct TYPE_23__ {TYPE_5__ bmiHeader; } ;
struct TYPE_22__ {int gmBlackBoxX; int gmBlackBoxY; scalar_t__ gmCellIncY; scalar_t__ gmCellIncX; TYPE_6__ gmptGlyphOrigin; } ;
struct TYPE_21__ {int lfHeight; int /*<<< orphan*/  lfQuality; int /*<<< orphan*/  lfFaceName; } ;
typedef  TYPE_7__ TEXTMETRICA ;
typedef  TYPE_8__ POINT ;
typedef  TYPE_9__ MAT2 ;
typedef  TYPE_10__ LOGFONTA ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_11__ GLYPHMETRICS ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_12__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  ANTIALIASED_QUALITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int GDI_ERROR ; 
 int GGO_BITMAP ; 
 int GGO_GRAY4_BITMAP ; 
 int FUNC3 (int /*<<< orphan*/ ,char const,int,TYPE_11__*,int,int*,TYPE_9__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NONANTIALIASED_QUALITY ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TA_BASELINE ; 
 int TMPF_VECTOR ; 
 int /*<<< orphan*/  TRANSPARENT ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (TYPE_12__ const*) ; 
 char* FUNC17 (TYPE_12__ const*,int*) ; 
 int* masks ; 
 int /*<<< orphan*/  FUNC18 (TYPE_10__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int FUNC23 (char const*) ; 

__attribute__((used)) static void FUNC24( HDC hdc, const BITMAPINFO *bmi, BYTE *bits, BOOL aa )
{
    DWORD dib_size = FUNC16(bmi), ret;
    LOGFONTA lf;
    HFONT font;
    GLYPHMETRICS gm;
    BYTE g_buf[10000];
    int i, stride, x, y;
    static const MAT2 identity = { {0,1}, {0,0}, {0,0}, {0,1} };
    char *eto_hash = NULL, *diy_hash = NULL;
    static const char str[] = "Hello Wine";
    POINT origin, g_org;
    static const BYTE vals[4] = { 0x00, 0x00, 0x00, 0x00 };
    TEXTMETRICA tm;
    COLORREF text_color;

    for(i = 0; i < dib_size; i++)
        bits[i] = vals[i % 4];

    FUNC18( &lf, 0, sizeof(lf) );
    FUNC22( lf.lfFaceName, "Tahoma" );
    lf.lfHeight = 24;
    lf.lfQuality = aa ? ANTIALIASED_QUALITY : NONANTIALIASED_QUALITY;

    font = FUNC0( &lf );
    font = FUNC10( hdc, font );

    FUNC7( hdc, &tm );
    if (!(tm.tmPitchAndFamily & TMPF_VECTOR))
    {
        FUNC20( "skipping as a bitmap font has been selected for Tahoma.\n" );
        FUNC1( FUNC10( hdc, font ) );
        return;
    }

    FUNC14( hdc, FUNC9(0xff, 0x00, 0x00) );
    FUNC13( hdc, TA_BASELINE );
    FUNC11( hdc, TRANSPARENT );
    origin.x = 10;
    origin.y = 100;

    FUNC2( hdc, origin.x, origin.y, 0, NULL, str, FUNC23(str), NULL );
    eto_hash = FUNC17( bmi, bits );

    for(i = 0; i < dib_size; i++)
        bits[i] = vals[i % 4];

    if (bmi->bmiHeader.biBitCount <= 8) aa = FALSE;

    text_color = FUNC6( hdc );
    for (i = 0; i < FUNC23(str); i++)
    {
        DWORD ggo_flags = aa ? GGO_GRAY4_BITMAP : GGO_BITMAP;

        ret = FUNC3( hdc, str[i], ggo_flags, &gm, 0, NULL, &identity );

        if (ret == GDI_ERROR) continue;

        if (ret) FUNC3( hdc, str[i], ggo_flags, &gm, sizeof(g_buf), g_buf, &identity );

        g_org.x = origin.x + gm.gmptGlyphOrigin.x;
        g_org.y = origin.y - gm.gmptGlyphOrigin.y;

        origin.x += gm.gmCellIncX;
        origin.y += gm.gmCellIncY;

        if (!ret) continue;

        if (aa)
        {
            stride = (gm.gmBlackBoxX + 3) & ~3;

            for (y = 0; y < gm.gmBlackBoxY; y++)
            {
                BYTE *g_ptr = g_buf + y * stride;
                COLORREF val;

                for (x = 0; x < gm.gmBlackBoxX; x++)
                {
                    if (g_ptr[x] <= 1) continue;
                    if (g_ptr[x] >= 16) val = text_color;
                    else
                    {
                        val = FUNC4( hdc, g_org.x + x, g_org.y + y );
                        val = FUNC15( val, text_color, g_ptr[x] );
                    }
                    FUNC12( hdc, g_org.x + x, g_org.y + y, val );
                }
            }
        }
        else
        {
            stride = ((gm.gmBlackBoxX + 31) >> 3) & ~3;

            for (y = 0; y < gm.gmBlackBoxY; y++)
            {
                BYTE *g_ptr = g_buf + y * stride;
                for (x = 0; x < gm.gmBlackBoxX; x++)
                {
                    if (g_ptr[x / 8] & masks[x % 8])
                        FUNC12( hdc, g_org.x + x, g_org.y + y, text_color );
                }
            }
        }
    }

    diy_hash = FUNC17( bmi, bits );
    FUNC19( !FUNC21( eto_hash, diy_hash ), "hash mismatch - aa %d\n", aa );

    FUNC8( FUNC5(), 0, diy_hash );
    FUNC8( FUNC5(), 0, eto_hash );

    font = FUNC10( hdc, font );
    FUNC1( font );
}