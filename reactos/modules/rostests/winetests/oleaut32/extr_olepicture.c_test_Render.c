
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hicon; } ;
struct TYPE_5__ {int cbSizeofstruct; TYPE_1__ icon; int picType; } ;
typedef TYPE_2__ PICTDESC ;
typedef int OLE_YSIZE_HIMETRIC ;
typedef int OLE_XSIZE_HIMETRIC ;
typedef int LPCSTR ;
typedef int IPicture ;
typedef int HRESULT ;
typedef int HDC ;
typedef int COLORREF ;


 int CTL_E_INVALIDPROPERTYVALUE ;
 int GetPixel (int ,int,int) ;
 scalar_t__ IDI_APPLICATION ;
 int IID_IPicture ;
 int IPicture_Release (int *) ;
 int IPicture_get_Height (int *,int*) ;
 int IPicture_get_Type (int *,short*) ;
 int IPicture_get_Width (int *,int*) ;
 int LoadIconA (int *,int ) ;
 int OleCreatePictureIndirect (TYPE_2__*,int *,int ,void**) ;
 int PICTYPE_ICON ;
 short PICTYPE_UNINITIALIZED ;
 int S_OK ;
 int SetPixelV (int ,int,int,int) ;
 int TRUE ;
 int create_render_dc () ;
 int delete_render_dc (int ) ;
 int ok (int,char*,short,...) ;
 int ole_expect (int ,int ) ;
 int picture_render (int *,int ,int,int,int,int,int ,int,int,int,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_Render(void)
{
    IPicture *pic;
    HRESULT hres;
    short type;
    PICTDESC desc;
    OLE_XSIZE_HIMETRIC pWidth;
    OLE_YSIZE_HIMETRIC pHeight;
    COLORREF result, expected;
    HDC hdc = create_render_dc();


    hres = OleCreatePictureIndirect(((void*)0), &IID_IPicture, TRUE, (void **)&pic);
    ok(hres == S_OK, "Failed to create a picture, hr %#x.\n", hres);
    hres = IPicture_get_Type(pic, &type);
    ok(hres == S_OK, "IPicture_get_Type does not return S_OK, but 0x%08x\n", hres);
    ok(type == PICTYPE_UNINITIALIZED, "Expected type = PICTYPE_UNINITIALIZED, got = %d\n", type);

    hres = picture_render(pic, hdc, 0, 0, 0, 0, 0, 0, 0, 0, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = picture_render(pic, hdc, 0, 0, 10, 10, 0, 0, 10, 0, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = picture_render(pic, hdc, 0, 0, 10, 10, 0, 0, 0, 10, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = picture_render(pic, hdc, 0, 0, 10, 10, 0, 0, 0, 0, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = picture_render(pic, hdc, 0, 0, 0, 10, 0, 0, 10, 10, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = picture_render(pic, hdc, 0, 0, 10, 0, 0, 0, 10, 10, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = picture_render(pic, hdc, 0, 0, 0, 0, 0, 0, 10, 10, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);

    hres = picture_render(pic, hdc, 0, 0, 10, 10, 0, 0, 10, 10, ((void*)0));
    ole_expect(hres, S_OK);
    IPicture_Release(pic);

    desc.cbSizeofstruct = sizeof(PICTDESC);
    desc.picType = PICTYPE_ICON;
    desc.icon.hicon = LoadIconA(((void*)0), (LPCSTR)IDI_APPLICATION);
    if(!desc.icon.hicon){
        win_skip("LoadIcon failed. Skipping...\n");
        delete_render_dc(hdc);
        return;
    }

    hres = OleCreatePictureIndirect(&desc, &IID_IPicture, TRUE, (void **)&pic);
    ok(hres == S_OK, "Failed to create a picture, hr %#x.\n", hres);

    hres = picture_render(pic, hdc, 0, 0, 0, 0, 0, 0, 0, 0, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = picture_render(pic, hdc, 0, 0, 10, 10, 0, 0, 10, 0, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = picture_render(pic, hdc, 0, 0, 10, 10, 0, 0, 0, 10, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = picture_render(pic, hdc, 0, 0, 10, 10, 0, 0, 0, 0, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = picture_render(pic, hdc, 0, 0, 0, 10, 0, 0, 10, 10, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = picture_render(pic, hdc, 0, 0, 10, 0, 0, 0, 10, 10, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);
    hres = picture_render(pic, hdc, 0, 0, 0, 0, 0, 0, 10, 10, ((void*)0));
    ole_expect(hres, CTL_E_INVALIDPROPERTYVALUE);


    IPicture_get_Width(pic, &pWidth);
    IPicture_get_Height(pic, &pHeight);

    SetPixelV(hdc, 0, 0, 0x00223344);
    SetPixelV(hdc, 5, 5, 0x00223344);
    SetPixelV(hdc, 10, 10, 0x00223344);
    expected = GetPixel(hdc, 0, 0);

    hres = picture_render(pic, hdc, 1, 1, 9, 9, 0, pHeight, pWidth, -pHeight, ((void*)0));
    ole_expect(hres, S_OK);

    if(hres != S_OK) goto done;


    result = GetPixel(hdc, 0, 0);
    ok(result == expected,
       "Color at 0,0 should be unchanged 0x%06X, but was 0x%06X\n", expected, result);
    result = GetPixel(hdc, 5, 5);
    ok(result != expected,
       "Color at 5,5 should have changed, but still was 0x%06X\n", expected);
    result = GetPixel(hdc, 10, 10);
    ok(result == expected,
       "Color at 10,10 should be unchanged 0x%06X, but was 0x%06X\n", expected, result);

done:
    IPicture_Release(pic);
    delete_render_dc(hdc);
}
