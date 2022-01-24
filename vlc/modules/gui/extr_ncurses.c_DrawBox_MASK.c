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

/* Variables and functions */
 int /*<<< orphan*/  ACS_HLINE ; 
 int /*<<< orphan*/  ACS_LLCORNER ; 
 int /*<<< orphan*/  ACS_LRCORNER ; 
 int /*<<< orphan*/  ACS_ULCORNER ; 
 int /*<<< orphan*/  ACS_URCORNER ; 
 int /*<<< orphan*/  ACS_VLINE ; 
 int COLS ; 
 int /*<<< orphan*/  C_BOX ; 
 int /*<<< orphan*/  C_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,char*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(int y, int h, bool color, const char *title)
{
    int w = COLS;
    if (w <= 3 || h <= 0)
        return;

    if (color) FUNC0(C_BOX, NULL);

    if (!title) title = "";
    int len = FUNC4(title);

    if (len > w - 2)
        len = w - 2;

    FUNC1(y, 0,    ACS_ULCORNER);
    FUNC2(y, 1,  ACS_HLINE, (w-len-2)/2);
    FUNC3(y, 1+(w-len-2)/2, "%s", title);
    FUNC2(y, (w-len)/2+len,  ACS_HLINE, w - 1 - ((w-len)/2+len));
    FUNC1(y, w-1,ACS_URCORNER);

    for (int i = 0; i < h; i++) {
        FUNC1(++y, 0,   ACS_VLINE);
        FUNC1(y, w-1, ACS_VLINE);
    }

    FUNC1(++y, 0,   ACS_LLCORNER);
    FUNC2(y,   1,   ACS_HLINE, w - 2);
    FUNC1(y,   w-1, ACS_LRCORNER);
    if (color) FUNC0(C_DEFAULT, NULL);
}