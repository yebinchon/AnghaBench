
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int desc ;
struct TYPE_3__ {int cbSizeofstruct; short picType; } ;
typedef TYPE_1__ PICTDESC ;
typedef int OLE_HANDLE ;
typedef int IPicture ;
typedef int HRESULT ;


 int DEFAULT_PALETTE ;
 int E_FAIL ;
 int E_UNEXPECTED ;
 int GetStockObject (int ) ;
 int HandleToUlong (int ) ;
 int IID_IPicture ;
 int IPicture_Release (int *) ;
 int IPicture_get_Handle (int *,int*) ;
 int IPicture_get_Type (int *,short*) ;
 int IPicture_get_hPal (int *,int*) ;
 int IPicture_set_hPal (int *,int ) ;
 int OleCreatePictureIndirect (TYPE_1__*,int *,int ,void**) ;
 short PICTYPE_BITMAP ;
 short PICTYPE_ENHMETAFILE ;
 short PICTYPE_NONE ;
 short PICTYPE_UNINITIALIZED ;
 int S_OK ;
 int TRUE ;
 int create_picture (short,int **) ;
 int ok (int,char*,short,...) ;

__attribute__((used)) static void test_OleCreatePictureIndirect(void)
{
    PICTDESC desc;
    OLE_HANDLE handle;
    IPicture *pict;
    HRESULT hr;
    short type, i;

if (0)
{

    OleCreatePictureIndirect(((void*)0), &IID_IPicture, TRUE, ((void*)0));
}

    desc.cbSizeofstruct = sizeof(desc);
    desc.picType = PICTYPE_UNINITIALIZED;
    pict = (void *)0xdeadbeef;
    hr = OleCreatePictureIndirect(&desc, &IID_IPicture, TRUE, (void **)&pict);
    ok(hr == E_UNEXPECTED, "got %#x\n", hr);
    ok(pict == ((void*)0), "got %p\n", pict);

    for (i = PICTYPE_UNINITIALIZED; i <= PICTYPE_ENHMETAFILE; i++)
    {
        hr = create_picture(i, &pict);
        ok(hr == S_OK, "%d: got %#x\n", i, hr);

        type = 0xdead;
        hr = IPicture_get_Type(pict, &type);
        ok(hr == S_OK, "%d: got %#x\n", i, hr);
        ok(type == i, "%d: got %d\n", i, type);

        handle = 0xdeadbeef;
        hr = IPicture_get_Handle(pict, &handle);
        ok(hr == S_OK, "%d: got %#x\n", i, hr);
        if (type == PICTYPE_UNINITIALIZED || type == PICTYPE_NONE)
            ok(handle == 0, "%d: got %#x\n", i, handle);
        else
            ok(handle != 0 && handle != 0xdeadbeef, "%d: got %#x\n", i, handle);

        handle = 0xdeadbeef;
        hr = IPicture_get_hPal(pict, &handle);
        if (type == PICTYPE_BITMAP)
        {
            ok(hr == S_OK, "%d: got %#x\n", i, hr);
            ok(handle == 0xbeefdead, "%d: got %#x\n", i, handle);
        }
        else
        {
            ok(hr == E_FAIL, "%d: got %#x\n", i, hr);
            ok(handle == 0xdeadbeef || handle == 0 , "%d: got %#x\n", i, handle);
        }

        hr = IPicture_set_hPal(pict, HandleToUlong(GetStockObject(DEFAULT_PALETTE)));
        if (type == PICTYPE_BITMAP)
            ok(hr == S_OK, "%d: got %#x\n", i, hr);
        else
            ok(hr == E_FAIL, "%d: got %#x\n", i, hr);

        IPicture_Release(pict);
    }
}
