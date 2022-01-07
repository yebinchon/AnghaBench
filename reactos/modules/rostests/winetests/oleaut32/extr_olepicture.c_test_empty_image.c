
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int seekto ;
typedef int ULARGE_INTEGER ;
typedef short OLE_HANDLE ;
typedef int * LPVOID ;
typedef int LPSTREAM ;
typedef scalar_t__ LPBYTE ;
typedef int LARGE_INTEGER ;
typedef int IPicture ;
typedef short HRESULT ;
typedef int HGLOBAL ;
typedef short DWORD ;


 short CreateStreamOnHGlobal (int ,int ,int *) ;
 int GlobalAlloc (int ,int) ;
 scalar_t__ GlobalLock (int ) ;
 int IID_IPicture ;
 int IPicture_Release (int *) ;
 short IPicture_get_Attributes (int *,short*) ;
 short IPicture_get_Handle (int *,short*) ;
 short IPicture_get_Type (int *,short*) ;
 int IStream_Release (int ) ;
 short IStream_Seek (int ,int ,int ,int *) ;
 short PICTYPE_NONE ;
 int SEEK_CUR ;
 short S_OK ;
 int TRUE ;
 int memcpy (scalar_t__,char*,int) ;
 int memset (int *,int ,int) ;
 int ok (int,char*,...) ;
 short pOleLoadPicture (int ,int,int ,int *,int **) ;

__attribute__((used)) static void test_empty_image(void) {
 LPBYTE data;
 LPSTREAM stream;
 IPicture* pic = ((void*)0);
 HRESULT hres;
 LPVOID pvObj = ((void*)0);
 HGLOBAL hglob;
 OLE_HANDLE handle;
 ULARGE_INTEGER newpos1;
 LARGE_INTEGER seekto;
 short type;
 DWORD attr;


 hglob = GlobalAlloc (0, 8);
 data = GlobalLock (hglob);
 memcpy(data,"lt\0\0",4);
 ((DWORD*)data)[1] = 0;
 hres = CreateStreamOnHGlobal (hglob, TRUE, &stream);
 ok (hres == S_OK, "CreatestreamOnHGlobal failed? doubt it... hres 0x%08x\n", hres);

 memset(&seekto,0,sizeof(seekto));
 hres = IStream_Seek(stream,seekto,SEEK_CUR,&newpos1);
 ok (hres == S_OK, "istream seek failed? doubt it... hres 0x%08x\n", hres);

 pvObj = ((void*)0);
 hres = pOleLoadPicture(stream, 8, TRUE, &IID_IPicture, &pvObj);
 pic = pvObj;
 ok(hres == S_OK,"empty picture not loaded, hres 0x%08x\n", hres);
 ok(pic != ((void*)0),"empty picture not loaded, pic is NULL\n");

 hres = IPicture_get_Type (pic, &type);
 ok (hres == S_OK,"empty picture get type failed with hres 0x%08x\n", hres);
 ok (type == PICTYPE_NONE,"type is %d, but should be PICTYPE_NONE(0)\n", type);

 attr = 0xdeadbeef;
 hres = IPicture_get_Attributes (pic, &attr);
 ok (hres == S_OK,"empty picture get attributes failed with hres 0x%08x\n", hres);
 ok (attr == 0,"attr is %d, but should be 0\n", attr);

 hres = IPicture_get_Handle (pic, &handle);
 ok (hres == S_OK,"empty picture get handle failed with hres 0x%08x\n", hres);
 ok (handle == 0, "empty picture get handle did not return 0, but 0x%08x\n", handle);
 IPicture_Release (pic);
 IStream_Release (stream);
}
