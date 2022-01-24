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
typedef  int /*<<< orphan*/  pic ;
typedef  int /*<<< orphan*/  desc ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
struct TYPE_5__ {int cbSizeofstruct; short picType; } ;
typedef  TYPE_1__ PICTDESC ;
typedef  short OLE_HANDLE ;
typedef  int LONG ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IPicture ;
typedef  int /*<<< orphan*/  IPersistStream ;
typedef  short HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  short DWORD ;

/* Variables and functions */
 short FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GMEM_ZEROINIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 short* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IPersistStream ; 
 int /*<<< orphan*/  IID_IPicture ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 short FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 short FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 short FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 short FUNC9 (int /*<<< orphan*/ *,short*) ; 
 short FUNC10 (int /*<<< orphan*/ *,short*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 short FUNC12 (int /*<<< orphan*/ *,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 short FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 short PICTYPE_NONE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 short S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC15 (short*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int,char*,...) ; 
 short FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static void FUNC19(void)
{
    IPicture *pic;
    PICTDESC desc;
    short type;
    OLE_HANDLE handle;
    HGLOBAL hmem;
    DWORD *mem;
    IPersistStream *src_stream;
    IStream *dst_stream, *stream;
    LARGE_INTEGER offset;
    HRESULT hr;
    LONG size;

    FUNC16(&pic, 0, sizeof(pic));
    desc.cbSizeofstruct = sizeof(desc);
    desc.picType = PICTYPE_NONE;
    hr = FUNC14(&desc, &IID_IPicture, FALSE, (void **)&pic);
    FUNC17(hr == S_OK, "OleCreatePictureIndirect error %#x\n", hr);

    type = -1;
    hr = FUNC10(pic, &type);
    FUNC17(hr == S_OK, "get_Type error %#x\n", hr);
    FUNC17(type == PICTYPE_NONE,"expected picture type PICTYPE_NONE, got %d\n", type);

    handle = (OLE_HANDLE)0xdeadbeef;
    hr = FUNC9(pic, &handle);
    FUNC17(hr == S_OK,"get_Handle error %#8x\n", hr);
    FUNC17(!handle, "get_Handle returned wrong handle %#x\n", handle);

    hmem = FUNC1(GMEM_ZEROINIT, 4096);
    hr = FUNC0(hmem, FALSE, &dst_stream);
    FUNC17(hr == S_OK, "createstreamonhglobal error %#x\n", hr);

    size = -1;
    hr = FUNC8(pic, dst_stream, TRUE, &size);
    FUNC17(hr == S_OK, "IPicture_SaveasFile error %#x\n", hr);
    FUNC17(size == -1, "expected -1, got %d\n", size);

    size = -1;
    hr = FUNC8(pic, dst_stream, FALSE, &size);
    FUNC17(hr == S_OK, "IPicture_SaveasFile error %#x\n", hr);
    FUNC17(size == -1, "expected -1, got %d\n", size);

    hr = FUNC6(pic, &IID_IPersistStream, (void **)&src_stream);
    FUNC17(hr == S_OK, "QueryInterface error %#x\n", hr);

    hr = FUNC5(src_stream, dst_stream, TRUE);
    FUNC17(hr == S_OK, "Save error %#x\n", hr);

    mem = FUNC2(hmem);
    FUNC17(!FUNC15(mem, "lt\0\0", 4), "got wrong stream header %04x\n", mem[0]);
    FUNC17(mem[1] == 0, "expected stream size 0, got %u\n", mem[1]);
    FUNC3(hmem);

    FUNC4(src_stream);
    FUNC7(pic);

    /* first with statable and seekable stream */
    offset.QuadPart = 0;
    hr = FUNC12(dst_stream, offset, SEEK_SET, NULL);
    FUNC17(hr == S_OK, "IStream_Seek %#x\n", hr);

    pic = NULL;
    hr = FUNC18(dst_stream, 0, FALSE, &IID_IPicture, (void **)&pic);
    FUNC17(hr == S_OK, "OleLoadPicture error %#x\n", hr);
    FUNC17(pic != NULL,"picture should not be not NULL\n");
    if (pic != NULL)
    {
        type = -1;
        hr = FUNC10(pic, &type);
        FUNC17(hr == S_OK,"get_Type error %#8x\n", hr);
        FUNC17(type == PICTYPE_NONE,"expected picture type PICTYPE_NONE, got %d\n", type);

        handle = (OLE_HANDLE)0xdeadbeef;
        hr = FUNC9(pic, &handle);
        FUNC17(hr == S_OK,"get_Handle error %#8x\n", hr);
        FUNC17(!handle, "get_Handle returned wrong handle %#x\n", handle);

        FUNC7(pic);
    }
    FUNC11(dst_stream);

    /* again with non-statable and non-seekable stream */
    stream = FUNC13(hmem);
    FUNC17(stream != NULL, "failed to create empty image stream\n");

    pic = NULL;
    hr = FUNC18(stream, 0, FALSE, &IID_IPicture, (void **)&pic);
    FUNC17(hr == S_OK, "OleLoadPicture error %#x\n", hr);
    FUNC17(pic != NULL,"picture should not be not NULL\n");
    if (pic != NULL)
    {
        type = -1;
        hr = FUNC10(pic, &type);
        FUNC17(hr == S_OK,"get_Type error %#8x\n", hr);
        FUNC17(type == PICTYPE_NONE,"expected picture type PICTYPE_NONE, got %d\n", type);

        handle = (OLE_HANDLE)0xdeadbeef;
        hr = FUNC9(pic, &handle);
        FUNC17(hr == S_OK,"get_Handle error %#8x\n", hr);
        FUNC17(!handle, "get_Handle returned wrong handle %#x\n", handle);

        FUNC7(pic);
    }
    /* Non-statable impl always deletes on release */
    FUNC11(stream);
}