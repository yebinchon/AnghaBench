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
struct TYPE_4__ {int /*<<< orphan*/  hicon; } ;
struct TYPE_5__ {int cbSizeofstruct; TYPE_1__ icon; int /*<<< orphan*/  picType; } ;
typedef  TYPE_2__ PICTDESC ;
typedef  int OLE_YSIZE_HIMETRIC ;
typedef  int OLE_XSIZE_HIMETRIC ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  IPicture ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_E_INVALIDPROPERTYVALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ IDI_APPLICATION ; 
 int /*<<< orphan*/  IID_IPicture ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,short*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  PICTYPE_ICON ; 
 short PICTYPE_UNINITIALIZED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,short,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    IPicture *pic;
    HRESULT hres;
    short type;
    PICTDESC desc;
    OLE_XSIZE_HIMETRIC pWidth;
    OLE_YSIZE_HIMETRIC pHeight;
    COLORREF result, expected;
    HDC hdc = FUNC8();

    /* test IPicture::Render return code on uninitialized picture */
    hres = FUNC6(NULL, &IID_IPicture, TRUE, (void **)&pic);
    FUNC10(hres == S_OK, "Failed to create a picture, hr %#x.\n", hres);
    hres = FUNC3(pic, &type);
    FUNC10(hres == S_OK, "IPicture_get_Type does not return S_OK, but 0x%08x\n", hres);
    FUNC10(type == PICTYPE_UNINITIALIZED, "Expected type = PICTYPE_UNINITIALIZED, got = %d\n", type);
    /* zero dimensions */
    hres = FUNC12(pic, hdc, 0, 0, 0, 0, 0, 0, 0, 0, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = FUNC12(pic, hdc, 0, 0, 10, 10, 0, 0, 10, 0, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = FUNC12(pic, hdc, 0, 0, 10, 10, 0, 0, 0, 10, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = FUNC12(pic, hdc, 0, 0, 10, 10, 0, 0, 0, 0, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = FUNC12(pic, hdc, 0, 0, 0, 10, 0, 0, 10, 10, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = FUNC12(pic, hdc, 0, 0, 10, 0, 0, 0, 10, 10, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = FUNC12(pic, hdc, 0, 0, 0, 0, 0, 0, 10, 10, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);
    /* nonzero dimensions, PICTYPE_UNINITIALIZED */
    hres = FUNC12(pic, hdc, 0, 0, 10, 10, 0, 0, 10, 10, NULL);
    FUNC11(hres, S_OK);
    FUNC1(pic);

    desc.cbSizeofstruct = sizeof(PICTDESC);
    desc.picType = PICTYPE_ICON;
    desc.icon.hicon = FUNC5(NULL, (LPCSTR)IDI_APPLICATION);
    if(!desc.icon.hicon){
        FUNC13("LoadIcon failed. Skipping...\n");
        FUNC9(hdc);
        return;
    }

    hres = FUNC6(&desc, &IID_IPicture, TRUE, (void **)&pic);
    FUNC10(hres == S_OK, "Failed to create a picture, hr %#x.\n", hres);
    /* zero dimensions, PICTYPE_ICON */
    hres = FUNC12(pic, hdc, 0, 0, 0, 0, 0, 0, 0, 0, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = FUNC12(pic, hdc, 0, 0, 10, 10, 0, 0, 10, 0, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = FUNC12(pic, hdc, 0, 0, 10, 10, 0, 0, 0, 10, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = FUNC12(pic, hdc, 0, 0, 10, 10, 0, 0, 0, 0, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = FUNC12(pic, hdc, 0, 0, 0, 10, 0, 0, 10, 10, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = FUNC12(pic, hdc, 0, 0, 10, 0, 0, 0, 10, 10, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = FUNC12(pic, hdc, 0, 0, 0, 0, 0, 0, 10, 10, NULL);
    FUNC11(hres, CTL_E_INVALIDPROPERTYVALUE);

    /* Check if target size and position is respected */
    FUNC4(pic, &pWidth);
    FUNC2(pic, &pHeight);

    FUNC7(hdc, 0, 0, 0x00223344);
    FUNC7(hdc, 5, 5, 0x00223344);
    FUNC7(hdc, 10, 10, 0x00223344);
    expected = FUNC0(hdc, 0, 0);

    hres = FUNC12(pic, hdc, 1, 1, 9, 9, 0, pHeight, pWidth, -pHeight, NULL);
    FUNC11(hres, S_OK);

    if(hres != S_OK) goto done;

    /* Evaluate the rendered Icon */
    result = FUNC0(hdc, 0, 0);
    FUNC10(result == expected,
       "Color at 0,0 should be unchanged 0x%06X, but was 0x%06X\n", expected, result);
    result = FUNC0(hdc, 5, 5);
    FUNC10(result != expected,
       "Color at 5,5 should have changed, but still was 0x%06X\n", expected);
    result = FUNC0(hdc, 10, 10);
    FUNC10(result == expected,
       "Color at 10,10 should be unchanged 0x%06X, but was 0x%06X\n", expected, result);

done:
    FUNC1(pic);
    FUNC9(hdc);
}