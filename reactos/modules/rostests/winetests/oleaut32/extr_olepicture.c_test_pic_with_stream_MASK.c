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
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ bmBits; } ;
typedef  scalar_t__ OLE_YSIZE_HIMETRIC ;
typedef  scalar_t__ OLE_XSIZE_HIMETRIC ;
typedef  scalar_t__ OLE_HANDLE ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  LPSTREAM ;
typedef  int /*<<< orphan*/  IPicture ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  IID_IPicture ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,short*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 short PICTYPE_BITMAP ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC12(LPSTREAM stream, unsigned int imgsize)
{
	IPicture*	pic = NULL;
	HRESULT		hres;
	LPVOID		pvObj = NULL;
	OLE_HANDLE	handle, hPal;
	OLE_XSIZE_HIMETRIC	width;
	OLE_YSIZE_HIMETRIC	height;
	short		type;
	DWORD		attr;
	ULONG		res;

	pvObj = NULL;
	hres = FUNC11(stream, imgsize, TRUE, &IID_IPicture, &pvObj);
	pic = pvObj;

	FUNC10(hres == S_OK,"OLP (NULL,..) does not return 0, but 0x%08x\n",hres);
	FUNC10(pic != NULL,"OLP (NULL,..) returns NULL, instead of !NULL\n");
	if (pic == NULL)
		return;

	pvObj = NULL;
	hres = FUNC1 (pic, &IID_IPicture, &pvObj);

	FUNC10(hres == S_OK,"IPicture_QI does not return S_OK, but 0x%08x\n", hres);
	FUNC10(pvObj != NULL,"IPicture_QI does return NULL, instead of a ptr\n");

	FUNC2 ((IPicture*)pvObj);

	handle = 0;
	hres = FUNC4 (pic, &handle);
	FUNC10(hres == S_OK,"IPicture_get_Handle does not return S_OK, but 0x%08x\n", hres);
	FUNC10(handle != 0, "IPicture_get_Handle returns a NULL handle, but it should be non NULL\n");

        if (handle)
        {
            BITMAP bmp;
            FUNC0(FUNC9(handle), sizeof(BITMAP), &bmp);
            FUNC10(bmp.bmBits != 0, "not a dib\n");
        }

	width = 0;
	hres = FUNC7 (pic, &width);
	FUNC10(hres == S_OK,"IPicture_get_Width does not return S_OK, but 0x%08x\n", hres);
	FUNC10(width != 0, "IPicture_get_Width returns 0, but it should not be 0.\n");

	height = 0;
	hres = FUNC5 (pic, &height);
	FUNC10(hres == S_OK,"IPicture_get_Height does not return S_OK, but 0x%08x\n", hres);
	FUNC10(height != 0, "IPicture_get_Height returns 0, but it should not be 0.\n");

	type = 0;
	hres = FUNC6 (pic, &type);
	FUNC10(hres == S_OK,"IPicture_get_Type does not return S_OK, but 0x%08x\n", hres);
	FUNC10(type == PICTYPE_BITMAP, "IPicture_get_Type returns %d, but it should be PICTYPE_BITMAP(%d).\n", type, PICTYPE_BITMAP);

	attr = 0;
	hres = FUNC3 (pic, &attr);
	FUNC10(hres == S_OK,"IPicture_get_Attributes does not return S_OK, but 0x%08x\n", hres);
	FUNC10(attr == 0, "IPicture_get_Attributes returns %d, but it should be 0.\n", attr);

	hPal = 0;
	hres = FUNC8 (pic, &hPal);
	FUNC10(hres == S_OK,"IPicture_get_hPal does not return S_OK, but 0x%08x\n", hres);
	/* a single pixel b/w image has no palette */
	FUNC10(hPal == 0, "IPicture_get_hPal returns %d, but it should be 0.\n", hPal);

	res = FUNC2 (pic);
	FUNC10 (res == 0, "refcount after release is %d, but should be 0?\n", res);
}