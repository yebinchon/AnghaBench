#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sfi ;
typedef  int UINT ;
struct TYPE_4__ {scalar_t__ scripts; int* wszFont; } ;
typedef  TYPE_1__ SCRIPTFONTINFO ;
typedef  int /*<<< orphan*/  IMLangFontLink2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  SCRIPTCONTF_FIXED_FONT ; 
 int /*<<< orphan*/  SCRIPTCONTF_PROPORTIONAL_FONT ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  sidAsciiLatin ; 

__attribute__((used)) static void FUNC4(IMLangFontLink2 *font_link)
{
    HRESULT hr;
    UINT nfonts;
    SCRIPTFONTINFO sfi[1];

    nfonts = 0;
    hr = FUNC1(font_link, sidAsciiLatin, 0, &nfonts, NULL);
    FUNC3(hr == S_OK, "GetScriptFontInfo failed %u\n", FUNC0());
    FUNC3(nfonts, "unexpected result\n");

    nfonts = 0;
    hr = FUNC1(font_link, sidAsciiLatin, SCRIPTCONTF_FIXED_FONT, &nfonts, NULL);
    FUNC3(hr == S_OK, "GetScriptFontInfo failed %u\n", FUNC0());
    FUNC3(nfonts, "unexpected result\n");

    nfonts = 0;
    hr = FUNC1(font_link, sidAsciiLatin, SCRIPTCONTF_PROPORTIONAL_FONT, &nfonts, NULL);
    FUNC3(hr == S_OK, "GetScriptFontInfo failed %u\n", FUNC0());
    FUNC3(nfonts, "unexpected result\n");

    nfonts = 1;
    FUNC2(sfi, 0, sizeof(sfi));
    hr = FUNC1(font_link, sidAsciiLatin, SCRIPTCONTF_FIXED_FONT, &nfonts, sfi);
    FUNC3(hr == S_OK, "GetScriptFontInfo failed %u\n", FUNC0());
    FUNC3(nfonts == 1, "got %u, expected 1\n", nfonts);
    FUNC3(sfi[0].scripts != 0, "unexpected result\n");
    FUNC3(sfi[0].wszFont[0], "unexpected result\n");

    nfonts = 1;
    FUNC2(sfi, 0, sizeof(sfi));
    hr = FUNC1(font_link, sidAsciiLatin, SCRIPTCONTF_PROPORTIONAL_FONT, &nfonts, sfi);
    FUNC3(hr == S_OK, "GetScriptFontInfo failed %u\n", FUNC0());
    FUNC3(nfonts == 1, "got %u, expected 1\n", nfonts);
    FUNC3(sfi[0].scripts != 0, "unexpected result\n");
    FUNC3(sfi[0].wszFont[0], "unexpected result\n");
}