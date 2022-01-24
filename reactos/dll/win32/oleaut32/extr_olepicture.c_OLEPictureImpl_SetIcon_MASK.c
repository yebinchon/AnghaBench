#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bm ;
struct TYPE_15__ {int bmHeight; int /*<<< orphan*/  bmWidth; } ;
struct TYPE_14__ {scalar_t__ hbmColor; scalar_t__ hbmMask; } ;
struct TYPE_10__ {scalar_t__ hicon; } ;
struct TYPE_11__ {TYPE_1__ icon; } ;
struct TYPE_12__ {TYPE_2__ u; } ;
struct TYPE_13__ {int origHeight; TYPE_3__ desc; int /*<<< orphan*/  himetricHeight; int /*<<< orphan*/  origWidth; int /*<<< orphan*/  himetricWidth; } ;
typedef  TYPE_4__ OLEPictureImpl ;
typedef  TYPE_5__ ICONINFO ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_6__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_5__*) ; 
 int FUNC4 (scalar_t__,int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(OLEPictureImpl * This)
{
    ICONINFO infoIcon;

    FUNC6("icon handle %p\n", This->desc.u.icon.hicon);
    if (FUNC3(This->desc.u.icon.hicon, &infoIcon)) {
        HDC hdcRef;
        BITMAP bm;

        FUNC6("bitmap handle for icon is %p\n", infoIcon.hbmColor);
        if(FUNC4(infoIcon.hbmColor ? infoIcon.hbmColor : infoIcon.hbmMask, sizeof(bm), &bm) != sizeof(bm)) {
            FUNC1("GetObject fails on icon bitmap\n");
            return;
        }

        This->origWidth = bm.bmWidth;
        This->origHeight = infoIcon.hbmColor ? bm.bmHeight : bm.bmHeight / 2;
        /* see comment on HIMETRIC on OLEPictureImpl_SetBitmap() */
        hdcRef = FUNC2(0);

        This->himetricWidth  = FUNC7(This->origWidth, hdcRef);
        This->himetricHeight = FUNC8(This->origHeight, hdcRef);

        FUNC5(0, hdcRef);

        FUNC0(infoIcon.hbmMask);
        if (infoIcon.hbmColor) FUNC0(infoIcon.hbmColor);
    } else {
        FUNC1("GetIconInfo() fails on icon %p\n", This->desc.u.icon.hicon);
    }
}