#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  seekto ;
typedef  int /*<<< orphan*/  ULARGE_INTEGER ;
struct TYPE_5__ {int LowPart; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  LPSTREAM ;
typedef  scalar_t__ LPBYTE ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IPicture ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IPicture ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,short*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 short PICTYPE_NONE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC11(void) {
	LPBYTE		data;
	LPSTREAM	stream;
	IPicture*	pic = NULL;
	HRESULT		hres;
	LPVOID		pvObj = NULL;
	HGLOBAL		hglob;
	ULARGE_INTEGER	newpos1;
	LARGE_INTEGER	seekto;
	short		type;

	/* Empty image at random stream position. */
	hglob = FUNC1 (0, 200);
	data = FUNC2 (hglob);
	data += 42;
	FUNC7(data,"lt\0\0",4);
	((DWORD*)data)[1] = 0;
	hres = FUNC0 (hglob, TRUE, &stream);
	FUNC9 (hres == S_OK, "CreatestreamOnHGlobal failed? doubt it... hres 0x%08x\n", hres);

	FUNC8(&seekto,0,sizeof(seekto));
	seekto.u.LowPart = 42;
	hres = FUNC6(stream,seekto,SEEK_CUR,&newpos1);
	FUNC9 (hres == S_OK, "istream seek failed? doubt it... hres 0x%08x\n", hres);

	pvObj = NULL;
	hres = FUNC10(stream, 8, TRUE, &IID_IPicture, &pvObj);
	pic = pvObj;
	FUNC9(hres == S_OK,"empty picture not loaded, hres 0x%08x\n", hres);
	FUNC9(pic != NULL,"empty picture not loaded, pic is NULL\n");

	hres = FUNC4 (pic, &type);
	FUNC9 (hres == S_OK,"empty picture get type failed with hres 0x%08x\n", hres);
	FUNC9 (type == PICTYPE_NONE,"type is %d, but should be PICTYPE_NONE(0)\n", type);

	FUNC3 (pic);
	FUNC5 (stream);
}