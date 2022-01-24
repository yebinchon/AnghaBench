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
typedef  int /*<<< orphan*/  bits ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HIMAGELIST ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ COLORREF ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,int) ; 
 scalar_t__ FUNC4 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  winetest_interactive ; 

__attribute__((used)) static void FUNC8(HWND hwnd, HIMAGELIST himl, int idx, int size,
                       const BYTE *checkbits, LPCSTR loc)
{
    BYTE bits[100*100/8];
    COLORREF c;
    HDC hdc;
    int x, y, i = -1;

    if (!winetest_interactive || !himl) return;

    FUNC5(bits, 0, sizeof(bits));
    hdc = FUNC7(hwnd, himl, idx, size, loc, FALSE);

    c = FUNC1(hdc, 0, 0);

    for (y = 0; y < size; y ++)
    {
        for (x = 0; x < size; x++)
        {
            if (!(x & 0x7)) i++;
            if (FUNC1(hdc, x, y) != c) bits[i] |= (0x80 >> (x & 0x7));
        }
    }

    FUNC0(hdc, 0, 0, size, size, hdc, size+1, size+1, SRCCOPY);
    FUNC2(hwnd, hdc);

    FUNC6 (FUNC4(bits, checkbits, (size * size)/8) == 0,
        "%s: bits different\n", loc);
    if (FUNC4(bits, checkbits, (size * size)/8))
        FUNC3(bits, checkbits, size);
}