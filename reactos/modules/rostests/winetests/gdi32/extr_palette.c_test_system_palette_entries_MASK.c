#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  HMETAFILE ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RASTERCAPS ; 
 int RC_PALETTE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    HDC hdc;
    HDC metafile_dc;
    HMETAFILE metafile;

    hdc = FUNC3(0);

    if (!(FUNC4( hdc, RASTERCAPS ) & RC_PALETTE))
    {
        FUNC6(hdc);
    }
    else
    {
        FUNC7( "device is palette-based, skipping test\n" );
    }

    FUNC5( 0, hdc );

    metafile_dc = FUNC1(NULL);

    FUNC6(metafile_dc);

    metafile = FUNC0(metafile_dc);
    FUNC2(metafile);
}