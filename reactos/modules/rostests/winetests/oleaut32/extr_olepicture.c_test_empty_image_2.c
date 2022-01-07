
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int seekto ;
typedef int ULARGE_INTEGER ;
struct TYPE_5__ {int LowPart; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef int * LPVOID ;
typedef int LPSTREAM ;
typedef scalar_t__ LPBYTE ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IPicture ;
typedef scalar_t__ HRESULT ;
typedef int HGLOBAL ;
typedef scalar_t__ DWORD ;


 scalar_t__ CreateStreamOnHGlobal (int ,int ,int *) ;
 int GlobalAlloc (int ,int) ;
 scalar_t__ GlobalLock (int ) ;
 int IID_IPicture ;
 int IPicture_Release (int *) ;
 scalar_t__ IPicture_get_Type (int *,short*) ;
 int IStream_Release (int ) ;
 scalar_t__ IStream_Seek (int ,TYPE_2__,int ,int *) ;
 short PICTYPE_NONE ;
 int SEEK_CUR ;
 scalar_t__ S_OK ;
 int TRUE ;
 int memcpy (scalar_t__,char*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,...) ;
 scalar_t__ pOleLoadPicture (int ,int,int ,int *,int **) ;

__attribute__((used)) static void test_empty_image_2(void) {
 LPBYTE data;
 LPSTREAM stream;
 IPicture* pic = ((void*)0);
 HRESULT hres;
 LPVOID pvObj = ((void*)0);
 HGLOBAL hglob;
 ULARGE_INTEGER newpos1;
 LARGE_INTEGER seekto;
 short type;


 hglob = GlobalAlloc (0, 200);
 data = GlobalLock (hglob);
 data += 42;
 memcpy(data,"lt\0\0",4);
 ((DWORD*)data)[1] = 0;
 hres = CreateStreamOnHGlobal (hglob, TRUE, &stream);
 ok (hres == S_OK, "CreatestreamOnHGlobal failed? doubt it... hres 0x%08x\n", hres);

 memset(&seekto,0,sizeof(seekto));
 seekto.u.LowPart = 42;
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

 IPicture_Release (pic);
 IStream_Release (stream);
}
