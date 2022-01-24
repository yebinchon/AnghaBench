#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int cbSize; } ;
struct TYPE_14__ {int rtfMinor; int rtfParam; int unicodeLength; TYPE_10__* editor; TYPE_2__ fmt; int /*<<< orphan*/  rtfMajor; int /*<<< orphan*/  rtfClass; } ;
struct TYPE_13__ {int /*<<< orphan*/  bEmulateVersion10; } ;
typedef  TYPE_1__ RTF_Info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
#define  rtfBullet 149 
 int /*<<< orphan*/  rtfDestination ; 
#define  rtfEmDash 148 
#define  rtfEmSpace 147 
#define  rtfEnDash 146 
#define  rtfEnSpace 145 
#define  rtfLDblQuote 144 
#define  rtfLQuote 143 
#define  rtfLTRMark 142 
#define  rtfLine 141 
#define  rtfNoBrkHyphen 140 
#define  rtfNoBrkSpace 139 
#define  rtfNoWidthJoiner 138 
#define  rtfNoWidthNonJoiner 137 
#define  rtfOptDest 136 
#define  rtfPage 135 
#define  rtfPar 134 
#define  rtfRDblQuote 133 
#define  rtfRQuote 132 
#define  rtfRTLMark 131 
#define  rtfSect 130 
#define  rtfTab 129 
 int /*<<< orphan*/  rtfText ; 
#define  rtfUnicode 128 

__attribute__((used)) static void FUNC10 (RTF_Info *info)
{
	switch (info->rtfMinor)
	{
	case rtfOptDest:
		/* the next token determines destination, if it's unknown, skip the group */
		/* this way we filter out the garbage coming from unknown destinations */ 
		FUNC4(info); 
		if (info->rtfClass != rtfDestination)
			FUNC7(info);
		else
			FUNC6(info); /* "\*" is ignored with known destinations */
		break;
	case rtfUnicode:
	{
                int i;

                FUNC5(info, info->rtfParam);

                /* After \u we must skip number of character tokens set by \ucN */
                for (i = 0; i < info->unicodeLength; i++)
                {
			FUNC4(info);
                        if (info->rtfClass != rtfText)
		        {
                                FUNC0("The token behind \\u is not text, but (%d,%d,%d)\n",
				info->rtfClass, info->rtfMajor, info->rtfMinor);
                                FUNC8(info);
                                break;
                        }
		}
		break;
	}
	case rtfLine:
            FUNC3(info);
            FUNC1(info->editor, 0);
            break;
	case rtfPage:
	case rtfSect:
	case rtfPar:
                FUNC3(info);
                FUNC2(info->editor, &info->fmt);
                FUNC9(&info->fmt, 0, sizeof(info->fmt));
                info->fmt.cbSize = sizeof(info->fmt);
		FUNC5 (info, '\r');
		if (info->editor->bEmulateVersion10) FUNC5 (info, '\n');
		break;
	case rtfNoBrkSpace:
		FUNC5 (info, 0x00A0);
		break;
	case rtfTab:
		FUNC5 (info, '\t');
		break;
	case rtfNoBrkHyphen:
		FUNC5 (info, 0x2011);
		break;
	case rtfBullet:
		FUNC5 (info, 0x2022);
		break;
	case rtfEmDash:
		FUNC5 (info, 0x2014);
		break;
	case rtfEnDash:
		FUNC5 (info, 0x2013);
		break;
        case rtfEmSpace:
                FUNC5 (info, ' ');
                break;
        case rtfEnSpace:
                FUNC5 (info, ' ');
                break;
	case rtfLQuote:
		FUNC5 (info, 0x2018);
		break;
	case rtfRQuote:
		FUNC5 (info, 0x2019);
		break;
	case rtfLDblQuote:
		FUNC5 (info, 0x201C);
		break;
	case rtfRDblQuote:
		FUNC5 (info, 0x201D);
		break;
        case rtfLTRMark:
                FUNC5 (info, 0x200E);
                break;
        case rtfRTLMark:
                FUNC5 (info, 0x200F);
                break;
        case rtfNoWidthJoiner:
                FUNC5 (info, 0x200D);
                break;
        case rtfNoWidthNonJoiner:
                FUNC5 (info, 0x200C);
                break;
	}
}