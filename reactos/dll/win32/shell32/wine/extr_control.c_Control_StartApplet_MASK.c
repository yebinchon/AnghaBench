#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_5__ {TYPE_1__* applet; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_2__ CPlItem ;

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(HWND hWnd, CPlItem *item)
{
    WCHAR verbOpen[] = {'c','p','l','o','p','e','n',0};
    WCHAR format[] = {'@','%','d',0};
    WCHAR param[MAX_PATH];

    /* execute the applet if item is valid */
    if (item)
    {
        FUNC1(param, format, item->id);
        FUNC0(hWnd, verbOpen, item->applet->cmd, param, NULL, SW_SHOW);
    }
}