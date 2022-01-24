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
typedef  int /*<<< orphan*/  PIXELFORMATDESCRIPTOR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WS_OVERLAPPEDWINDOW ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const PIXELFORMATDESCRIPTOR *pfd, PIXELFORMATDESCRIPTOR *fmt)
{
    int pf;
    HDC hdc;
    HWND hwnd;

    hwnd = FUNC1("static", "Title", WS_OVERLAPPEDWINDOW, 10, 10, 200, 200, NULL, NULL,
            NULL, NULL);
    if (!hwnd)
        return 0;

    hdc = FUNC4( hwnd );
    pf = FUNC0( hdc, pfd );
    if (pf && fmt)
    {
        FUNC7(fmt, 0, sizeof(*fmt));
        FUNC8(FUNC2( hdc, pf, sizeof(*fmt), fmt ),
           "DescribePixelFormat failed with error: %u\n", FUNC5());
    }
    FUNC6( hwnd, hdc );
    FUNC3( hwnd );

    return pf;
}