
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IPicture ;
typedef scalar_t__ HRESULT ;


 int E_POINTER ;
 int IID_IPicture ;
 int IPicture_Release (int *) ;
 scalar_t__ IPicture_get_Type (int *,int *) ;
 scalar_t__ OleCreatePictureIndirect (int *,int *,int ,void**) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int ok (int,char*,scalar_t__) ;
 int ole_expect (scalar_t__,int ) ;

__attribute__((used)) static void test_get_Type(void)
{
    IPicture *pic;
    HRESULT hres;

    hres = OleCreatePictureIndirect(((void*)0), &IID_IPicture, TRUE, (void **)&pic);
    ok(hres == S_OK, "Failed to create a picture, hr %#x.\n", hres);

    hres = IPicture_get_Type(pic, ((void*)0));
    ole_expect(hres, E_POINTER);

    IPicture_Release(pic);
}
