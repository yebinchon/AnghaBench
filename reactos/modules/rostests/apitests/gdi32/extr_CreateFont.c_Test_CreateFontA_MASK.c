#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int lfWeight; int /*<<< orphan*/  lfFaceName; } ;
typedef  TYPE_1__ LOGFONTA ;
typedef  int INT ;
typedef  scalar_t__ HFONT ;

/* Variables and functions */
 int /*<<< orphan*/  CLIP_DEFAULT_PRECIS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_CHARSET ; 
 int /*<<< orphan*/  DEFAULT_PITCH ; 
 int /*<<< orphan*/  DEFAULT_QUALITY ; 
 int /*<<< orphan*/  FALSE ; 
 int FW_DONTCARE ; 
 int FUNC1 (scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/  INVALIDFONT ; 
 int /*<<< orphan*/  OUT_DEFAULT_PRECIS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5()
{
	HFONT hFont;
	LOGFONTA logfonta;
	INT result;

	/* Test invalid font name */
	hFont = FUNC0(15, 0, 0, 0, FW_DONTCARE, FALSE, FALSE, FALSE,
	                    DEFAULT_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS,
	                    DEFAULT_QUALITY, DEFAULT_PITCH, INVALIDFONT);
	FUNC3(hFont != 0, "CreateFontA failed\n");

	result = FUNC1(hFont, sizeof(LOGFONTA), &logfonta);
	FUNC3(result == sizeof(LOGFONTA), "result = %d", result);

	FUNC3(FUNC2(logfonta.lfFaceName, INVALIDFONT, FUNC4(INVALIDFONT)) == 0, "not equal\n");
	FUNC3(logfonta.lfWeight == FW_DONTCARE, "lfWeight=%ld\n", logfonta.lfWeight);

}