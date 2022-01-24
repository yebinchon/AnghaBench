#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  rtfFCodePage; } ;
struct TYPE_7__ {int rtfMinor; int /*<<< orphan*/  rtfParam; int /*<<< orphan*/  unicodeLength; int /*<<< orphan*/  codePage; int /*<<< orphan*/  ansiCodePage; } ;
typedef  TYPE_1__ RTF_Info ;
typedef  TYPE_2__ RTFFont ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  rtfFontNum 129 
#define  rtfUnicodeLength 128 

__attribute__((used)) static void
FUNC4(RTF_Info *info)
{
        RTFFont *font;

        switch (info->rtfMinor)
        {
        case rtfFontNum:
                font = FUNC2(info, info->rtfParam);
                if (font)
                {
                        if (info->ansiCodePage != CP_UTF8 && info->codePage != font->rtfFCodePage)
                        {
                                FUNC1(info);
                                info->codePage = font->rtfFCodePage;
                        }
                        FUNC3("font %d codepage %d\n", info->rtfParam, info->codePage);
                }
                else
                        FUNC0( "unknown font %d\n", info->rtfParam);
                break;
        case rtfUnicodeLength:
                info->unicodeLength = info->rtfParam;
                break;
        }
}