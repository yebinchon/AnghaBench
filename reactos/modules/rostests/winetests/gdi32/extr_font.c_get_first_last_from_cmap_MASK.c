#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmap_type ;
struct TYPE_6__ {int version; } ;
typedef  TYPE_1__ cmap_header ;
typedef  int WORD ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GDI_ERROR ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  MS_CMAP_TAG ; 
 int /*<<< orphan*/  cmap_ms_symbol ; 
 int /*<<< orphan*/  cmap_ms_unicode ; 
 int /*<<< orphan*/  cmap_none ; 
 void* FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

__attribute__((used)) static BOOL FUNC10(HDC hdc, DWORD *first, DWORD *last, cmap_type *cmap_type)
{
    LONG size, ret;
    cmap_header *header;
    void *cmap;
    BOOL r = FALSE;
    WORD format;

    size = FUNC1(hdc, MS_CMAP_TAG, 0, NULL, 0);
    FUNC8(size != GDI_ERROR, "no cmap table found\n");
    if(size == GDI_ERROR) return FALSE;

    header = FUNC3(FUNC2(), 0, size);
    ret = FUNC1(hdc, MS_CMAP_TAG, 0, header, size);
    FUNC8(ret == size, "GetFontData should return %u not %u\n", size, ret);
    FUNC8(FUNC0(header->version) == 0, "got cmap version %d\n", FUNC0(header->version));

    cmap = FUNC5(header, 3, 1);
    if(cmap)
        *cmap_type = cmap_ms_unicode;
    else
    {
        cmap = FUNC5(header, 3, 0);
        if(cmap) *cmap_type = cmap_ms_symbol;
    }
    if(!cmap)
    {
        *cmap_type = cmap_none;
        goto end;
    }

    format = FUNC0(*(WORD *)cmap);
    switch(format)
    {
    case 0:
        r = FUNC6(cmap, first, last);
        break;
    case 4:
        r = FUNC7(cmap, first, last, size);
        break;
    default:
        FUNC9("unhandled cmap format %d\n", format);
        break;
    }

end:
    FUNC4(FUNC2(), 0, header);
    return r;
}