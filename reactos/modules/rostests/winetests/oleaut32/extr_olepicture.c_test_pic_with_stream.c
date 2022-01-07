
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ bmBits; } ;
typedef scalar_t__ OLE_YSIZE_HIMETRIC ;
typedef scalar_t__ OLE_XSIZE_HIMETRIC ;
typedef scalar_t__ OLE_HANDLE ;
typedef int * LPVOID ;
typedef int LPSTREAM ;
typedef int IPicture ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ BITMAP ;


 int GetObjectA (int ,int,TYPE_1__*) ;
 int IID_IPicture ;
 scalar_t__ IPicture_QueryInterface (int *,int *,int **) ;
 scalar_t__ IPicture_Release (int *) ;
 scalar_t__ IPicture_get_Attributes (int *,scalar_t__*) ;
 scalar_t__ IPicture_get_Handle (int *,scalar_t__*) ;
 scalar_t__ IPicture_get_Height (int *,scalar_t__*) ;
 scalar_t__ IPicture_get_Type (int *,short*) ;
 scalar_t__ IPicture_get_Width (int *,scalar_t__*) ;
 scalar_t__ IPicture_get_hPal (int *,scalar_t__*) ;
 short PICTYPE_BITMAP ;
 scalar_t__ S_OK ;
 int TRUE ;
 int UlongToHandle (scalar_t__) ;
 int ok (int,char*,...) ;
 scalar_t__ pOleLoadPicture (int ,unsigned int,int ,int *,int **) ;

__attribute__((used)) static void
test_pic_with_stream(LPSTREAM stream, unsigned int imgsize)
{
 IPicture* pic = ((void*)0);
 HRESULT hres;
 LPVOID pvObj = ((void*)0);
 OLE_HANDLE handle, hPal;
 OLE_XSIZE_HIMETRIC width;
 OLE_YSIZE_HIMETRIC height;
 short type;
 DWORD attr;
 ULONG res;

 pvObj = ((void*)0);
 hres = pOleLoadPicture(stream, imgsize, TRUE, &IID_IPicture, &pvObj);
 pic = pvObj;

 ok(hres == S_OK,"OLP (NULL,..) does not return 0, but 0x%08x\n",hres);
 ok(pic != ((void*)0),"OLP (NULL,..) returns NULL, instead of !NULL\n");
 if (pic == ((void*)0))
  return;

 pvObj = ((void*)0);
 hres = IPicture_QueryInterface (pic, &IID_IPicture, &pvObj);

 ok(hres == S_OK,"IPicture_QI does not return S_OK, but 0x%08x\n", hres);
 ok(pvObj != ((void*)0),"IPicture_QI does return NULL, instead of a ptr\n");

 IPicture_Release ((IPicture*)pvObj);

 handle = 0;
 hres = IPicture_get_Handle (pic, &handle);
 ok(hres == S_OK,"IPicture_get_Handle does not return S_OK, but 0x%08x\n", hres);
 ok(handle != 0, "IPicture_get_Handle returns a NULL handle, but it should be non NULL\n");

        if (handle)
        {
            BITMAP bmp;
            GetObjectA(UlongToHandle(handle), sizeof(BITMAP), &bmp);
            ok(bmp.bmBits != 0, "not a dib\n");
        }

 width = 0;
 hres = IPicture_get_Width (pic, &width);
 ok(hres == S_OK,"IPicture_get_Width does not return S_OK, but 0x%08x\n", hres);
 ok(width != 0, "IPicture_get_Width returns 0, but it should not be 0.\n");

 height = 0;
 hres = IPicture_get_Height (pic, &height);
 ok(hres == S_OK,"IPicture_get_Height does not return S_OK, but 0x%08x\n", hres);
 ok(height != 0, "IPicture_get_Height returns 0, but it should not be 0.\n");

 type = 0;
 hres = IPicture_get_Type (pic, &type);
 ok(hres == S_OK,"IPicture_get_Type does not return S_OK, but 0x%08x\n", hres);
 ok(type == PICTYPE_BITMAP, "IPicture_get_Type returns %d, but it should be PICTYPE_BITMAP(%d).\n", type, PICTYPE_BITMAP);

 attr = 0;
 hres = IPicture_get_Attributes (pic, &attr);
 ok(hres == S_OK,"IPicture_get_Attributes does not return S_OK, but 0x%08x\n", hres);
 ok(attr == 0, "IPicture_get_Attributes returns %d, but it should be 0.\n", attr);

 hPal = 0;
 hres = IPicture_get_hPal (pic, &hPal);
 ok(hres == S_OK,"IPicture_get_hPal does not return S_OK, but 0x%08x\n", hres);

 ok(hPal == 0, "IPicture_get_hPal returns %d, but it should be 0.\n", hPal);

 res = IPicture_Release (pic);
 ok (res == 0, "refcount after release is %d, but should be 0?\n", res);
}
