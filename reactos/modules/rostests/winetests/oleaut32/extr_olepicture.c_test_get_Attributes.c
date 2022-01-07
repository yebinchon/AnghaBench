
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IPicture ;
typedef scalar_t__ HRESULT ;
typedef short DWORD ;


 scalar_t__ E_POINTER ;
 int IID_IPicture ;
 int IPicture_Release (int *) ;
 scalar_t__ IPicture_get_Attributes (int *,short*) ;
 scalar_t__ IPicture_get_Type (int *,short*) ;
 scalar_t__ OleCreatePictureIndirect (int *,int *,int ,void**) ;
 short PICTYPE_UNINITIALIZED ;
 scalar_t__ S_OK ;
 int TRUE ;
 int ok (int,char*,short) ;
 int ole_expect (scalar_t__,scalar_t__) ;

__attribute__((used)) static void test_get_Attributes(void)
{
    IPicture *pic;
    HRESULT hres;
    short type;
    DWORD attr;

    hres = OleCreatePictureIndirect(((void*)0), &IID_IPicture, TRUE, (void **)&pic);
    ok(hres == S_OK, "Failed to create a picture, hr %#x.\n", hres);
    hres = IPicture_get_Type(pic, &type);
    ok(hres == S_OK, "IPicture_get_Type does not return S_OK, but 0x%08x\n", hres);
    ok(type == PICTYPE_UNINITIALIZED, "Expected type = PICTYPE_UNINITIALIZED, got = %d\n", type);

    hres = IPicture_get_Attributes(pic, ((void*)0));
    ole_expect(hres, E_POINTER);

    attr = 0xdeadbeef;
    hres = IPicture_get_Attributes(pic, &attr);
    ole_expect(hres, S_OK);
    ok(attr == 0, "IPicture_get_Attributes does not reset attr to zero, got %d\n", attr);

    IPicture_Release(pic);
}
