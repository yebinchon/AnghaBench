#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  seekto ;
typedef  int /*<<< orphan*/  ULARGE_INTEGER ;
typedef  short OLE_HANDLE ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  LPSTREAM ;
typedef  scalar_t__ LPBYTE ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IPicture ;
typedef  short HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  short DWORD ;

/* Variables and functions */
 short FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IPicture ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 short FUNC4 (int /*<<< orphan*/ *,short*) ; 
 short FUNC5 (int /*<<< orphan*/ *,short*) ; 
 short FUNC6 (int /*<<< orphan*/ *,short*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 short FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 short PICTYPE_NONE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 short S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 short FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC13(void) {
	LPBYTE		data;
	LPSTREAM	stream;
	IPicture*	pic = NULL;
	HRESULT		hres;
	LPVOID		pvObj = NULL;
	HGLOBAL		hglob;
	OLE_HANDLE	handle;
	ULARGE_INTEGER	newpos1;
	LARGE_INTEGER	seekto;
	short		type;
	DWORD		attr;

	/* Empty image. Happens occasionally in VB programs. */
	hglob = FUNC1 (0, 8);
	data = FUNC2 (hglob);
	FUNC9(data,"lt\0\0",4);
	((DWORD*)data)[1] = 0;
	hres = FUNC0 (hglob, TRUE, &stream);
	FUNC11 (hres == S_OK, "CreatestreamOnHGlobal failed? doubt it... hres 0x%08x\n", hres);

	FUNC10(&seekto,0,sizeof(seekto));
	hres = FUNC8(stream,seekto,SEEK_CUR,&newpos1);
	FUNC11 (hres == S_OK, "istream seek failed? doubt it... hres 0x%08x\n", hres);

	pvObj = NULL;
	hres = FUNC12(stream, 8, TRUE, &IID_IPicture, &pvObj);
	pic = pvObj;
	FUNC11(hres == S_OK,"empty picture not loaded, hres 0x%08x\n", hres);
	FUNC11(pic != NULL,"empty picture not loaded, pic is NULL\n");

	hres = FUNC6 (pic, &type);
	FUNC11 (hres == S_OK,"empty picture get type failed with hres 0x%08x\n", hres);
	FUNC11 (type == PICTYPE_NONE,"type is %d, but should be PICTYPE_NONE(0)\n", type);

	attr = 0xdeadbeef;
	hres = FUNC4 (pic, &attr);
	FUNC11 (hres == S_OK,"empty picture get attributes failed with hres 0x%08x\n", hres);
	FUNC11 (attr == 0,"attr is %d, but should be 0\n", attr);

	hres = FUNC5 (pic, &handle);
	FUNC11 (hres == S_OK,"empty picture get handle failed with hres 0x%08x\n", hres);
	FUNC11 (handle == 0, "empty picture get handle did not return 0, but 0x%08x\n", handle);
	FUNC3 (pic);
	FUNC7 (stream);
}