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
struct TYPE_3__ {int /*<<< orphan*/  bmHeight; int /*<<< orphan*/  bmWidth; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HGDIOBJ ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HBITMAP ;
typedef  TYPE_1__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC6(HBITMAP src, HBITMAP *pdest)
{
    HDC src_dc;
    HGDIOBJ orig_src_bitmap;
    BITMAP bm;
    HBITMAP dest;

    src_dc = FUNC2(NULL);
    orig_src_bitmap = FUNC5(src_dc, src);
    FUNC4(src, sizeof bm, &bm);
    dest = FUNC1(src_dc, bm.bmWidth, bm.bmHeight);
    if (dest)
    {
        HDC dest_dc = FUNC2(NULL);
        HGDIOBJ orig_dest_bitmap = FUNC5(dest_dc, dest);
        FUNC0(dest_dc, 0, 0, bm.bmWidth, bm.bmHeight, src_dc, 0, 0, SRCCOPY);
        FUNC5(dest_dc, orig_dest_bitmap);
        FUNC3(dest_dc);
    }
    FUNC5(src_dc, orig_src_bitmap);
    FUNC3(src_dc);
    *pdest = dest;
    return dest ? S_OK : E_FAIL;
}