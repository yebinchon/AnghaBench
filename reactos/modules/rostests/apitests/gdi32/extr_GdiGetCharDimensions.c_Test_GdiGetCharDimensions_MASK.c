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
typedef  char WCHAR ;
struct TYPE_9__ {int member_0; int member_4; char* member_13; int /*<<< orphan*/  member_12; int /*<<< orphan*/  member_11; int /*<<< orphan*/  member_10; int /*<<< orphan*/  member_9; int /*<<< orphan*/  member_8; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_8__ {int cx; } ;
struct TYPE_7__ {int tmHeight; } ;
typedef  TYPE_1__ TEXTMETRICW ;
typedef  TYPE_2__ SIZE ;
typedef  int LONG ;
typedef  TYPE_3__ LOGFONT ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,int) ; 

void FUNC8()
{
	LOGFONT logfont = {-11, 0, 0, 0, 400,
	                    0, 0, 0, 0, 0, 0, 0, 0,
	                    "MS Shell Dlg 2"};
	HFONT hFont, hOldFont;
	HDC hdc;
	LONG x, y, x2;
	TEXTMETRICW tm;
	SIZE size;
    static const WCHAR alphabet[] = {
        'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q',
        'r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H',
        'I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',0};

	hFont = FUNC1(&logfont);
	hdc = FUNC0(NULL);
	hOldFont = FUNC6(hdc, hFont);

	x = FUNC4(hdc, &tm, &y);
    FUNC5(hdc, alphabet, 52, &size);
    x2 = (size.cx / 26 + 1) / 2;

    FUNC7(x == x2, "x=%ld, x2=%ld\n", x, x2);
	FUNC7(y == tm.tmHeight, "y = %ld, tm.tmHeight = %ld\n", y, tm.tmHeight);

	FUNC6(hdc, hOldFont);
	FUNC3(hFont);
	FUNC2(hdc);
}