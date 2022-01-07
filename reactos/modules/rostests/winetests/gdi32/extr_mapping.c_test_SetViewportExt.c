
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_7__ {scalar_t__ cx; scalar_t__ cy; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ POINT ;
typedef scalar_t__ LONG ;
typedef int HDC ;


 int GetViewportExtEx (int ,TYPE_1__*) ;
 int GetViewportOrgEx (int ,TYPE_2__*) ;
 int GetWindowExtEx (int ,TYPE_1__*) ;
 int GetWindowOrgEx (int ,TYPE_2__*) ;
 int SetViewportExtEx (int ,scalar_t__,scalar_t__,int *) ;
 int ok (int,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ rough_match (scalar_t__,scalar_t__) ;

__attribute__((used)) static void test_SetViewportExt(HDC hdc, LONG cx, LONG cy, LONG expected_vp_cx, LONG expected_vp_cy)
{
    SIZE windowExt, windowExtAfter, viewportExt;
    POINT windowOrg, windowOrgAfter, viewportOrg, viewportOrgAfter;

    GetWindowOrgEx(hdc, &windowOrg);
    GetViewportOrgEx(hdc, &viewportOrg);
    GetWindowExtEx(hdc, &windowExt);

    SetViewportExtEx(hdc, cx, cy, ((void*)0));
    GetViewportExtEx(hdc, &viewportExt);
    ok(rough_match(viewportExt.cx, expected_vp_cx) && rough_match(viewportExt.cy, expected_vp_cy),
        "Viewport extents have not been properly adjusted: Expected %dx%d, got %dx%d\n",
        expected_vp_cx, expected_vp_cy, viewportExt.cx, viewportExt.cy);

    GetWindowExtEx(hdc, &windowExtAfter);
    ok(windowExt.cx == windowExtAfter.cx && windowExt.cy == windowExtAfter.cy,
       "Window extension changed from %dx%d to %dx%d\n",
       windowExt.cx, windowExt.cy, windowExtAfter.cx, windowExtAfter.cy);

    GetWindowOrgEx(hdc, &windowOrgAfter);
    ok(windowOrg.x == windowOrgAfter.x && windowOrg.y == windowOrgAfter.y,
        "Window origin changed from (%d,%d) to (%d,%d)\n",
        windowOrg.x, windowOrg.y, windowOrgAfter.x, windowOrgAfter.y);

    GetViewportOrgEx(hdc, &viewportOrgAfter);
    ok(viewportOrg.x == viewportOrgAfter.x && viewportOrg.y == viewportOrgAfter.y,
        "Viewport origin changed from (%d,%d) to (%d,%d)\n",
        viewportOrg.x, viewportOrg.y, viewportOrgAfter.x, viewportOrgAfter.y);
}
