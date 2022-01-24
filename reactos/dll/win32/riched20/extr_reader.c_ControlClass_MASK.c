#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int rtfMajor; } ;
typedef  TYPE_1__ RTF_Info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
#define  rtfCharAttr 135 
#define  rtfCharSet 134 
#define  rtfDefFont 133 
#define  rtfDestination 132 
#define  rtfDocAttr 131 
#define  rtfParAttr 130 
#define  rtfSpecialChar 129 
#define  rtfTblAttr 128 

__attribute__((used)) static void
FUNC10 (RTF_Info *info)
{
	switch (info->rtfMajor)
	{
        case rtfCharAttr:
                FUNC0(info);
                FUNC5(info);
                break;
        case rtfParAttr:
                FUNC6(info);
                break;
        case rtfTblAttr:
                FUNC8(info);
                break;
        case rtfCharSet:
                FUNC1(info);
                break;
        case rtfDefFont:
                FUNC2(info);
                break;
	case rtfDestination:
		FUNC3 (info);
		break;
        case rtfDocAttr:
                FUNC4(info);
                break;
	case rtfSpecialChar:
                FUNC9 (info);
                FUNC7(info);
		break;
	}
}