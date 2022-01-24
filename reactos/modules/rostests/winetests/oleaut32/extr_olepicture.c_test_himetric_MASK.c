#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  desc ;
struct TYPE_6__ {int /*<<< orphan*/ * hicon; } ;
struct TYPE_5__ {int /*<<< orphan*/  hbitmap; int /*<<< orphan*/ * hpal; } ;
struct TYPE_7__ {int cbSizeofstruct; TYPE_2__ icon; int /*<<< orphan*/  picType; TYPE_1__ bmp; } ;
typedef  TYPE_3__ PICTDESC ;
typedef  scalar_t__ OLE_YSIZE_HIMETRIC ;
typedef  scalar_t__ OLE_XSIZE_HIMETRIC ;
typedef  int /*<<< orphan*/  IPicture ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * HICON ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,double,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 double FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IPicture ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  LOGPIXELSX ; 
 int /*<<< orphan*/  LOGPIXELSY ; 
 scalar_t__ FUNC11 (scalar_t__,int,double) ; 
 scalar_t__ FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  PICTYPE_BITMAP ; 
 int /*<<< orphan*/  PICTYPE_ICON ; 
 int /*<<< orphan*/  SM_CXICON ; 
 int /*<<< orphan*/  SM_CYICON ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 

__attribute__((used)) static void FUNC14(void)
{
    static const BYTE bmp_bits[1024];
    OLE_XSIZE_HIMETRIC cx;
    OLE_YSIZE_HIMETRIC cy;
    IPicture *pic;
    PICTDESC desc;
    HBITMAP bmp;
    HRESULT hr;
    HICON icon;
    HDC hdc;
    INT d;

    desc.cbSizeofstruct = sizeof(desc);
    desc.picType = PICTYPE_BITMAP;
    desc.bmp.hpal = NULL;

    hdc = FUNC1(0);

    bmp = FUNC0(1.9 * FUNC6(hdc, LOGPIXELSX),
                       1.9 * FUNC6(hdc, LOGPIXELSY), 1, 1, NULL);

    desc.bmp.hbitmap = bmp;

    /* size in himetric units reported rounded up to next integer value */
    hr = FUNC12(&desc, &IID_IPicture, FALSE, (void**)&pic);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);

    cx = 0;
    d = FUNC11((INT)(1.9 * FUNC6(hdc, LOGPIXELSX)), 2540, FUNC6(hdc, LOGPIXELSX));
    hr = FUNC10(pic, &cx);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);
    FUNC13(cx == d, "got %d, expected %d\n", cx, d);

    cy = 0;
    d = FUNC11((INT)(1.9 * FUNC6(hdc, LOGPIXELSY)), 2540, FUNC6(hdc, LOGPIXELSY));
    hr = FUNC9(pic, &cy);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);
    FUNC13(cy == d, "got %d, expected %d\n", cy, d);

    FUNC4(bmp);
    FUNC8(pic);

    /* same thing with icon */
    icon = FUNC2(NULL, FUNC7(SM_CXICON), FUNC7(SM_CYICON),
                      1, 1, bmp_bits, bmp_bits);
    FUNC13(icon != NULL, "failed to create icon\n");

    desc.picType = PICTYPE_ICON;
    desc.icon.hicon = icon;

    hr = FUNC12(&desc, &IID_IPicture, FALSE, (void**)&pic);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);

    cx = 0;
    d = FUNC11(FUNC7(SM_CXICON), 2540, FUNC6(hdc, LOGPIXELSX));
    hr = FUNC10(pic, &cx);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);
    FUNC13(cx == d, "got %d, expected %d\n", cx, d);

    cy = 0;
    d = FUNC11(FUNC7(SM_CYICON), 2540, FUNC6(hdc, LOGPIXELSY));
    hr = FUNC9(pic, &cy);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);
    FUNC13(cy == d, "got %d, expected %d\n", cy, d);

    FUNC8(pic);
    FUNC5(icon);

    FUNC3(hdc);
}