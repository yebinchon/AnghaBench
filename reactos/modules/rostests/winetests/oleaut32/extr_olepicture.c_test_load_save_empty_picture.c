
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pic ;
typedef int desc ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
struct TYPE_5__ {int cbSizeofstruct; short picType; } ;
typedef TYPE_1__ PICTDESC ;
typedef short OLE_HANDLE ;
typedef int LONG ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IStream ;
typedef int IPicture ;
typedef int IPersistStream ;
typedef short HRESULT ;
typedef int HGLOBAL ;
typedef short DWORD ;


 short CreateStreamOnHGlobal (int ,int ,int **) ;
 int FALSE ;
 int GMEM_ZEROINIT ;
 int GlobalAlloc (int ,int) ;
 short* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int IID_IPersistStream ;
 int IID_IPicture ;
 int IPersistStream_Release (int *) ;
 short IPersistStream_Save (int *,int *,int ) ;
 short IPicture_QueryInterface (int *,int *,void**) ;
 int IPicture_Release (int *) ;
 short IPicture_SaveAsFile (int *,int *,int ,int*) ;
 short IPicture_get_Handle (int *,short*) ;
 short IPicture_get_Type (int *,short*) ;
 int IStream_Release (int *) ;
 short IStream_Seek (int *,TYPE_2__,int ,int *) ;
 int * NoStatStream_Construct (int ) ;
 short OleCreatePictureIndirect (TYPE_1__*,int *,int ,void**) ;
 short PICTYPE_NONE ;
 int SEEK_SET ;
 short S_OK ;
 int TRUE ;
 int memcmp (short*,char*,int) ;
 int memset (int **,int ,int) ;
 int ok (int,char*,...) ;
 short pOleLoadPicture (int *,int ,int ,int *,void**) ;

__attribute__((used)) static void test_load_save_empty_picture(void)
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

    memset(&pic, 0, sizeof(pic));
    desc.cbSizeofstruct = sizeof(desc);
    desc.picType = PICTYPE_NONE;
    hr = OleCreatePictureIndirect(&desc, &IID_IPicture, FALSE, (void **)&pic);
    ok(hr == S_OK, "OleCreatePictureIndirect error %#x\n", hr);

    type = -1;
    hr = IPicture_get_Type(pic, &type);
    ok(hr == S_OK, "get_Type error %#x\n", hr);
    ok(type == PICTYPE_NONE,"expected picture type PICTYPE_NONE, got %d\n", type);

    handle = (OLE_HANDLE)0xdeadbeef;
    hr = IPicture_get_Handle(pic, &handle);
    ok(hr == S_OK,"get_Handle error %#8x\n", hr);
    ok(!handle, "get_Handle returned wrong handle %#x\n", handle);

    hmem = GlobalAlloc(GMEM_ZEROINIT, 4096);
    hr = CreateStreamOnHGlobal(hmem, FALSE, &dst_stream);
    ok(hr == S_OK, "createstreamonhglobal error %#x\n", hr);

    size = -1;
    hr = IPicture_SaveAsFile(pic, dst_stream, TRUE, &size);
    ok(hr == S_OK, "IPicture_SaveasFile error %#x\n", hr);
    ok(size == -1, "expected -1, got %d\n", size);

    size = -1;
    hr = IPicture_SaveAsFile(pic, dst_stream, FALSE, &size);
    ok(hr == S_OK, "IPicture_SaveasFile error %#x\n", hr);
    ok(size == -1, "expected -1, got %d\n", size);

    hr = IPicture_QueryInterface(pic, &IID_IPersistStream, (void **)&src_stream);
    ok(hr == S_OK, "QueryInterface error %#x\n", hr);

    hr = IPersistStream_Save(src_stream, dst_stream, TRUE);
    ok(hr == S_OK, "Save error %#x\n", hr);

    mem = GlobalLock(hmem);
    ok(!memcmp(mem, "lt\0\0", 4), "got wrong stream header %04x\n", mem[0]);
    ok(mem[1] == 0, "expected stream size 0, got %u\n", mem[1]);
    GlobalUnlock(hmem);

    IPersistStream_Release(src_stream);
    IPicture_Release(pic);


    offset.QuadPart = 0;
    hr = IStream_Seek(dst_stream, offset, SEEK_SET, ((void*)0));
    ok(hr == S_OK, "IStream_Seek %#x\n", hr);

    pic = ((void*)0);
    hr = pOleLoadPicture(dst_stream, 0, FALSE, &IID_IPicture, (void **)&pic);
    ok(hr == S_OK, "OleLoadPicture error %#x\n", hr);
    ok(pic != ((void*)0),"picture should not be not NULL\n");
    if (pic != ((void*)0))
    {
        type = -1;
        hr = IPicture_get_Type(pic, &type);
        ok(hr == S_OK,"get_Type error %#8x\n", hr);
        ok(type == PICTYPE_NONE,"expected picture type PICTYPE_NONE, got %d\n", type);

        handle = (OLE_HANDLE)0xdeadbeef;
        hr = IPicture_get_Handle(pic, &handle);
        ok(hr == S_OK,"get_Handle error %#8x\n", hr);
        ok(!handle, "get_Handle returned wrong handle %#x\n", handle);

        IPicture_Release(pic);
    }
    IStream_Release(dst_stream);


    stream = NoStatStream_Construct(hmem);
    ok(stream != ((void*)0), "failed to create empty image stream\n");

    pic = ((void*)0);
    hr = pOleLoadPicture(stream, 0, FALSE, &IID_IPicture, (void **)&pic);
    ok(hr == S_OK, "OleLoadPicture error %#x\n", hr);
    ok(pic != ((void*)0),"picture should not be not NULL\n");
    if (pic != ((void*)0))
    {
        type = -1;
        hr = IPicture_get_Type(pic, &type);
        ok(hr == S_OK,"get_Type error %#8x\n", hr);
        ok(type == PICTYPE_NONE,"expected picture type PICTYPE_NONE, got %d\n", type);

        handle = (OLE_HANDLE)0xdeadbeef;
        hr = IPicture_get_Handle(pic, &handle);
        ok(hr == S_OK,"get_Handle error %#8x\n", hr);
        ok(!handle, "get_Handle returned wrong handle %#x\n", handle);

        IPicture_Release(pic);
    }

    IStream_Release(stream);
}
