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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
#define  LST_CIRCLE 141 
#define  LST_DECIMAL 140 
#define  LST_DECIMAL_ZERO 139 
#define  LST_DISC 138 
#define  LST_LC_ALPHA 137 
#define  LST_LC_GREEK 136 
#define  LST_LC_LATIN 135 
#define  LST_LC_ROMAN 134 
#define  LST_NONE 133 
#define  LST_SQUARE 132 
#define  LST_UC_ALPHA 131 
#define  LST_UC_GREEK 130 
#define  LST_UC_LATIN 129 
#define  LST_UC_ROMAN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  roman_lc ; 
 int /*<<< orphan*/  roman_uc ; 

__attribute__((used)) static void FUNC4(fz_context *ctx, int type, int x, char *buf, int size)
{
	switch (type)
	{
	case LST_NONE: FUNC3(buf, "", size); break;
	case LST_DISC: FUNC2(buf, size, "%C  ", 0x2022); break; /* U+2022 BULLET */
	case LST_CIRCLE: FUNC2(buf, size, "%C  ", 0x25CB); break; /* U+25CB WHITE CIRCLE */
	case LST_SQUARE: FUNC2(buf, size, "%C  ", 0x25A0); break; /* U+25A0 BLACK SQUARE */
	default:
	case LST_DECIMAL: FUNC2(buf, size, "%d. ", x); break;
	case LST_DECIMAL_ZERO: FUNC2(buf, size, "%02d. ", x); break;
	case LST_LC_ROMAN: FUNC1(ctx, buf, size, x, roman_lc, "m"); break;
	case LST_UC_ROMAN: FUNC1(ctx, buf, size, x, roman_uc, "M"); break;
	case LST_LC_ALPHA: FUNC0(ctx, buf, size, x, 'a', 'z'); break;
	case LST_UC_ALPHA: FUNC0(ctx, buf, size, x, 'A', 'Z'); break;
	case LST_LC_LATIN: FUNC0(ctx, buf, size, x, 'a', 'z'); break;
	case LST_UC_LATIN: FUNC0(ctx, buf, size, x, 'A', 'Z'); break;
	case LST_LC_GREEK: FUNC0(ctx, buf, size, x, 0x03B1, 0x03C9); break;
	case LST_UC_GREEK: FUNC0(ctx, buf, size, x, 0x0391, 0x03A9); break;
	}
}