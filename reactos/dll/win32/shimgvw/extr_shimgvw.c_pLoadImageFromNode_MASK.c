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
typedef  int /*<<< orphan*/  szTitleBuf ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  FileName; } ;
typedef  TYPE_1__ SHIMGVW_FILENODE ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  IDS_APPTITLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hInstance ; 
 scalar_t__ image ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static VOID
FUNC7(SHIMGVW_FILENODE *node, HWND hwnd)
{
    WCHAR szTitleBuf[800];
    WCHAR szResStr[512];
    WCHAR *c;

    if (node)
    {
        c = FUNC6(node->FileName, '\\');
        if (c)
        {
            c++;
        }

        FUNC2(hInstance, IDS_APPTITLE, szResStr, FUNC0(szResStr));
        FUNC4(szTitleBuf, sizeof(szTitleBuf), L"%ls%ls%ls", szResStr, L" - ", c);
        FUNC3(hwnd, szTitleBuf);

        if (image)
        {
            FUNC1(image);
        }

        FUNC5(node->FileName);
    }
}