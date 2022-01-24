#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  desc ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
struct TYPE_6__ {scalar_t__ hbitmap; scalar_t__ hpal; } ;
struct TYPE_7__ {int cbSizeofstruct; short picType; TYPE_1__ bmp; } ;
typedef  TYPE_2__ PICTDESC ;
typedef  int OLE_HANDLE ;
typedef  int LONG ;
typedef  TYPE_3__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IPicture ;
typedef  int /*<<< orphan*/  IPersistStream ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int E_FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GMEM_ZEROINIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IPersistStream ; 
 int /*<<< orphan*/  IID_IPicture ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int*) ; 
 int FUNC13 (int /*<<< orphan*/ *,short*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int) ; 
 int FUNC17 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 short PICTYPE_BITMAP ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC18 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int,char*,int) ; 

__attribute__((used)) static void FUNC20(void)
{
    IPicture *pic;
    PICTDESC desc;
    short type;
    OLE_HANDLE handle;
    HGLOBAL hmem;
    DWORD *mem;
    IPersistStream *src_stream;
    IStream *dst_stream;
    LARGE_INTEGER offset;
    HRESULT hr;
    LONG size;

    desc.cbSizeofstruct = sizeof(desc);
    desc.picType = PICTYPE_BITMAP;
    desc.bmp.hpal = 0;
    desc.bmp.hbitmap = FUNC0(1, 1, 1, 1, NULL);
    hr = FUNC17(&desc, &IID_IPicture, FALSE, (void**)&pic);
    FUNC19(hr == S_OK, "OleCreatePictureIndirect error %#x\n", hr);

    type = -1;
    hr = FUNC13(pic, &type);
    FUNC19(hr == S_OK,"get_Type error %#8x\n", hr);
    FUNC19(type == PICTYPE_BITMAP,"expected picture type PICTYPE_BITMAP, got %d\n", type);

    hr = FUNC12(pic, &handle);
    FUNC19(hr == S_OK,"get_Handle error %#8x\n", hr);
    FUNC19(FUNC16(handle) == desc.bmp.hbitmap, "get_Handle returned wrong handle %#x\n", handle);

    hmem = FUNC3(GMEM_ZEROINIT, 4096);
    hr = FUNC1(hmem, FALSE, &dst_stream);
    FUNC19(hr == S_OK, "createstreamonhglobal error %#x\n", hr);

    size = -1;
    hr = FUNC11(pic, dst_stream, TRUE, &size);
    FUNC19(hr == S_OK, "IPicture_SaveasFile error %#x\n", hr);
    FUNC19(size == 66, "expected 66, got %d\n", size);
    mem = FUNC5(hmem);
    FUNC19(!FUNC18(&mem[0], "BM", 2), "got wrong bmp header %04x\n", mem[0]);
    FUNC6(hmem);

    size = -1;
    hr = FUNC11(pic, dst_stream, FALSE, &size);
    FUNC19(hr == E_FAIL, "expected E_FAIL, got %#x\n", hr);
    FUNC19(size == -1, "expected -1, got %d\n", size);

    offset.QuadPart = 0;
    hr = FUNC15(dst_stream, offset, SEEK_SET, NULL);
    FUNC19(hr == S_OK, "IStream_Seek %#x\n", hr);

    hr = FUNC9(pic, &IID_IPersistStream, (void **)&src_stream);
    FUNC19(hr == S_OK, "QueryInterface error %#x\n", hr);

    hr = FUNC8(src_stream, dst_stream, TRUE);
    FUNC19(hr == S_OK, "Save error %#x\n", hr);

    FUNC7(src_stream);
    FUNC14(dst_stream);

    mem = FUNC5(hmem);
    FUNC19(!FUNC18(mem, "lt\0\0", 4), "got wrong stream header %04x\n", mem[0]);
    FUNC19(mem[1] == 66, "expected stream size 66, got %u\n", mem[1]);
    FUNC19(!FUNC18(&mem[2], "BM", 2), "got wrong bmp header %04x\n", mem[2]);

    FUNC6(hmem);
    FUNC4(hmem);

    FUNC2(desc.bmp.hbitmap);
    FUNC10(pic);
}