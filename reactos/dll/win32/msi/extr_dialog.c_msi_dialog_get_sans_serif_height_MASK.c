#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  lfFaceName; int /*<<< orphan*/  lfHeight; } ;
struct TYPE_6__ {int /*<<< orphan*/  tmHeight; } ;
typedef  TYPE_1__ TEXTMETRICW ;
typedef  int /*<<< orphan*/  LONG ;
typedef  TYPE_2__ LOGFONTW ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HFONT ;
typedef  scalar_t__ HDC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  LOGPIXELSY ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static INT FUNC10( HWND hwnd )
{
    static const WCHAR szSansSerif[] = {
        'M','S',' ','S','a','n','s',' ','S','e','r','i','f',0 };
    LOGFONTW lf;
    TEXTMETRICW tm;
    BOOL r;
    LONG height = 0;
    HFONT hFont, hOldFont;
    HDC hdc;

    hdc = FUNC2( hwnd );
    if (hdc)
    {
        FUNC8( &lf, 0, sizeof lf );
        lf.lfHeight = FUNC5(12, FUNC3(hdc, LOGPIXELSY), 72);
        FUNC9( lf.lfFaceName, szSansSerif );
        hFont = FUNC0(&lf);
        if (hFont)
        {
            hOldFont = FUNC7( hdc, hFont );
            r = FUNC4( hdc, &tm );
            if (r)
                height = tm.tmHeight;
            FUNC7( hdc, hOldFont );
            FUNC1( hFont );
        }
        FUNC6( hwnd, hdc );
    }
    return height;
}