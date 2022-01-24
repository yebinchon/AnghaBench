#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  desc ;
struct TYPE_10__ {int iType; int dSignature; } ;
struct TYPE_9__ {scalar_t__ QuadPart; } ;
struct TYPE_7__ {scalar_t__ hemf; } ;
struct TYPE_8__ {int cbSizeofstruct; short picType; TYPE_1__ emf; } ;
typedef  TYPE_2__ PICTDESC ;
typedef  int OLE_HANDLE ;
typedef  int LONG ;
typedef  TYPE_3__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IPicture ;
typedef  int /*<<< orphan*/  IPersistStream ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  scalar_t__ HDC ;
typedef  TYPE_4__ ENHMETAHEADER ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int EMR_HEADER ; 
 int ENHMETA_SIGNATURE ; 
 int E_FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IPersistStream ; 
 int /*<<< orphan*/  IID_IPicture ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int*) ; 
 int FUNC14 (int /*<<< orphan*/ *,short*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 short PICTYPE_ENHMETAFILE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC19 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,...) ; 

__attribute__((used)) static void FUNC21(void)
{
    HDC hdc;
    IPicture *pic;
    PICTDESC desc;
    short type;
    OLE_HANDLE handle;
    HGLOBAL hmem;
    DWORD *mem;
    ENHMETAHEADER *emh;
    IPersistStream *src_stream;
    IStream *dst_stream;
    LARGE_INTEGER offset;
    HRESULT hr;
    LONG size;

    hdc = FUNC1(0, NULL, NULL, NULL);
    FUNC20(hdc != 0, "CreateEnhMetaFileA failed\n");

    desc.cbSizeofstruct = sizeof(desc);
    desc.picType = PICTYPE_ENHMETAFILE;
    desc.emf.hemf = FUNC0(hdc);
    FUNC20(desc.emf.hemf != 0, "CloseEnhMetaFile failed\n");
    hr = FUNC18(&desc, &IID_IPicture, FALSE, (void**)&pic);
    FUNC20(hr == S_OK, "OleCreatePictureIndirect error %#x\n", hr);

    type = -1;
    hr = FUNC14(pic, &type);
    FUNC20(hr == S_OK,"get_Type error %#8x\n", hr);
    FUNC20(type == PICTYPE_ENHMETAFILE,"expected PICTYPE_ENHMETAFILE, got %d\n", type);

    hr = FUNC13(pic, &handle);
    FUNC20(hr == S_OK,"get_Handle error %#8x\n", hr);
    FUNC20(FUNC17(handle) == desc.emf.hemf, "get_Handle returned wrong handle %#x\n", handle);

    hmem = FUNC4(GMEM_MOVEABLE, 0);
    hr = FUNC2(hmem, FALSE, &dst_stream);
    FUNC20(hr == S_OK, "createstreamonhglobal error %#x\n", hr);

    size = -1;
    hr = FUNC12(pic, dst_stream, TRUE, &size);
    FUNC20(hr == S_OK, "IPicture_SaveasFile error %#x\n", hr);
    FUNC20(size == 128, "expected 128, got %d\n", size);
    emh = FUNC6(hmem);
if (size)
{
    FUNC20(emh->iType == EMR_HEADER, "wrong iType %04x\n", emh->iType);
    FUNC20(emh->dSignature == ENHMETA_SIGNATURE, "wrong dSignature %08x\n", emh->dSignature);
}
    FUNC7(hmem);

    size = -1;
    hr = FUNC12(pic, dst_stream, FALSE, &size);
    FUNC20(hr == E_FAIL, "expected E_FAIL, got %#x\n", hr);
    FUNC20(size == -1, "expected -1, got %d\n", size);

    offset.QuadPart = 0;
    hr = FUNC16(dst_stream, offset, SEEK_SET, NULL);
    FUNC20(hr == S_OK, "IStream_Seek %#x\n", hr);

    hr = FUNC10(pic, &IID_IPersistStream, (void **)&src_stream);
    FUNC20(hr == S_OK, "QueryInterface error %#x\n", hr);

    hr = FUNC9(src_stream, dst_stream, TRUE);
    FUNC20(hr == S_OK, "Save error %#x\n", hr);

    FUNC8(src_stream);
    FUNC15(dst_stream);

    mem = FUNC6(hmem);
    FUNC20(!FUNC19(mem, "lt\0\0", 4), "got wrong stream header %04x\n", mem[0]);
    FUNC20(mem[1] == 128, "expected 128, got %u\n", mem[1]);
    emh = (ENHMETAHEADER *)(mem + 2);
    FUNC20(emh->iType == EMR_HEADER, "wrong iType %04x\n", emh->iType);
    FUNC20(emh->dSignature == ENHMETA_SIGNATURE, "wrong dSignature %08x\n", emh->dSignature);

    FUNC7(hmem);
    FUNC5(hmem);

    FUNC3(desc.emf.hemf);
    FUNC11(pic);
}