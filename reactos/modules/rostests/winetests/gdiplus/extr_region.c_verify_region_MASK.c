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
typedef  int /*<<< orphan*/  rgn ;
struct TYPE_4__ {int dwSize; int nCount; int nRgnSize; int /*<<< orphan*/  const rcBound; int /*<<< orphan*/  iType; } ;
struct TYPE_5__ {TYPE_1__ rdh; scalar_t__ Buffer; } ;
typedef  int /*<<< orphan*/  RGNDATAHEADER ;
typedef  TYPE_2__ RGNDATA ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  HRGN ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  RDH_RECTANGLES ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC6(HRGN hrgn, const RECT *rc)
{
    union
    {
        RGNDATA data;
        char buf[sizeof(RGNDATAHEADER) + sizeof(RECT)];
    } rgn;
    const RECT *rect;
    DWORD ret;

    ret = FUNC1(hrgn, 0, NULL);
    if (FUNC2(rc))
        FUNC3(ret == sizeof(rgn.data.rdh), "expected sizeof(rdh), got %u\n", ret);
    else
        FUNC3(ret == sizeof(rgn.data.rdh) + sizeof(RECT), "expected sizeof(rgn), got %u\n", ret);

    if (!ret) return;

    ret = FUNC1(hrgn, sizeof(rgn), &rgn.data);
    if (FUNC2(rc))
        FUNC3(ret == sizeof(rgn.data.rdh), "expected sizeof(rdh), got %u\n", ret);
    else
        FUNC3(ret == sizeof(rgn.data.rdh) + sizeof(RECT), "expected sizeof(rgn), got %u\n", ret);

    FUNC4("size %u, type %u, count %u, rgn size %u, bound %s\n",
          rgn.data.rdh.dwSize, rgn.data.rdh.iType,
          rgn.data.rdh.nCount, rgn.data.rdh.nRgnSize,
          FUNC5(&rgn.data.rdh.rcBound));
    if (rgn.data.rdh.nCount != 0)
    {
        rect = (const RECT *)rgn.data.Buffer;
        FUNC4("rect %s\n", FUNC5(rect));
        FUNC3(FUNC0(rect, rc), "expected %s, got %s\n",
           FUNC5(rc), FUNC5(rect));
    }

    FUNC3(rgn.data.rdh.dwSize == sizeof(rgn.data.rdh), "expected sizeof(rdh), got %u\n", rgn.data.rdh.dwSize);
    FUNC3(rgn.data.rdh.iType == RDH_RECTANGLES, "expected RDH_RECTANGLES, got %u\n", rgn.data.rdh.iType);
    if (FUNC2(rc))
    {
        FUNC3(rgn.data.rdh.nCount == 0, "expected 0, got %u\n", rgn.data.rdh.nCount);
        FUNC3(rgn.data.rdh.nRgnSize == 0,  "expected 0, got %u\n", rgn.data.rdh.nRgnSize);
    }
    else
    {
        FUNC3(rgn.data.rdh.nCount == 1, "expected 1, got %u\n", rgn.data.rdh.nCount);
        FUNC3(rgn.data.rdh.nRgnSize == sizeof(RECT),  "expected sizeof(RECT), got %u\n", rgn.data.rdh.nRgnSize);
    }
    FUNC3(FUNC0(&rgn.data.rdh.rcBound, rc), "expected %s, got %s\n",
       FUNC5(rc), FUNC5(&rgn.data.rdh.rcBound));
}