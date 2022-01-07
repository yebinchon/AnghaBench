
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
typedef size_t ULONG ;
struct TYPE_7__ {scalar_t__ vt; } ;
struct TYPE_6__ {size_t cbSizeInstance; int cbAlignment; } ;
typedef TYPE_1__ TYPEATTR ;
typedef int SYSKIND ;
typedef char OLECHAR ;
typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef int ICreateTypeLib2 ;
typedef int ICreateTypeInfo ;
typedef scalar_t__ HRESULT ;
typedef int HREFTYPE ;
typedef int CHAR ;


 int CP_ACP ;
 scalar_t__ CreateTypeLib2 (int,int *,int **) ;
 int DeleteFileA (int *) ;
 int FALSE ;
 int GetTempFileNameA (char*,char*,int ,int *) ;
 scalar_t__ ICreateTypeInfo_AddRefTypeInfo (int *,int *,int *) ;
 scalar_t__ ICreateTypeInfo_QueryInterface (int *,int *,void**) ;
 int ICreateTypeInfo_Release (int *) ;
 scalar_t__ ICreateTypeLib2_CreateTypeInfo (int *,char*,int ,int **) ;
 scalar_t__ ICreateTypeLib2_QueryInterface (int *,int *,void**) ;
 scalar_t__ ICreateTypeLib2_Release (int *) ;
 scalar_t__ ICreateTypeLib2_SaveAllChanges (int *) ;
 int IID_ITypeInfo ;
 int IID_ITypeLib ;
 scalar_t__ ITypeInfo_GetTypeAttr (int *,TYPE_1__**) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_1__*) ;
 scalar_t__ ITypeLib_GetTypeInfo (int *,int ,int **) ;
 scalar_t__ ITypeLib_Release (int *) ;
 scalar_t__ LoadTypeLibEx (int *,int ,int **) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,int *,int,int *,int) ;
 int REGKIND_NONE ;


 scalar_t__ S_OK ;
 TYPE_2__* TDATests ;
 int TKIND_INTERFACE ;
 int TRUE ;
 int ok (int,char*,...) ;
 int testTDA (int *,TYPE_2__*,int,int ,size_t,int,int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_SetTypeDescAlias(SYSKIND kind)
{
    CHAR filenameA[MAX_PATH];
    WCHAR filenameW[MAX_PATH];
    ITypeLib *tl;
    ICreateTypeLib2 *ctl;
    ITypeInfo *ti;
    ICreateTypeInfo *cti;
    HREFTYPE hreftype;
    TYPEATTR *typeattr;
    ULONG href_cbSizeInstance, i;
    WORD href_cbAlignment, ptr_size;
    HRESULT hr;

    static OLECHAR interfaceW[] = {'i','n','t','e','r','f','a','c','e',0};

    switch(kind){
    case 129:
        trace("testing SYS_WIN32\n");
        ptr_size = 4;
        break;
    case 128:
        trace("testing SYS_WIN64\n");
        ptr_size = 8;
        break;
    default:
        return;
    }

    GetTempFileNameA(".", "tlb", 0, filenameA);
    MultiByteToWideChar(CP_ACP, 0, filenameA, -1, filenameW, MAX_PATH);

    hr = CreateTypeLib2(kind, filenameW, &ctl);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeLib2_CreateTypeInfo(ctl, interfaceW, TKIND_INTERFACE, &cti);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeInfo_QueryInterface(cti, &IID_ITypeInfo, (void**)&ti);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeInfo_AddRefTypeInfo(cti, ti, &hreftype);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ITypeInfo_GetTypeAttr(ti, &typeattr);
    ok(hr == S_OK, "got %08x\n", hr);

    href_cbSizeInstance = typeattr->cbSizeInstance;
    href_cbAlignment = typeattr->cbAlignment;

    ITypeInfo_ReleaseTypeAttr(ti, typeattr);

    ITypeInfo_Release(ti);
    ICreateTypeInfo_Release(cti);

    hr = ICreateTypeLib2_QueryInterface(ctl, &IID_ITypeLib, (void**)&tl);
    ok(hr == S_OK, "got %08x\n", hr);

    for(i = 0; TDATests[i].vt; ++i)
        testTDA(tl, &TDATests[i], ptr_size, hreftype, href_cbSizeInstance, href_cbAlignment, TRUE);

    hr = ICreateTypeLib2_SaveAllChanges(ctl);
    ok(hr == S_OK, "got %08x\n", hr);

    ITypeLib_Release(tl);
    ok(0 == ICreateTypeLib2_Release(ctl), "typelib should have been released\n");

    trace("after save...\n");

    hr = LoadTypeLibEx(filenameW, REGKIND_NONE, &tl);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ITypeLib_GetTypeInfo(tl, 0, &ti);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ITypeInfo_GetTypeAttr(ti, &typeattr);
    ok(hr == S_OK, "got %08x\n", hr);

    href_cbSizeInstance = typeattr->cbSizeInstance;
    href_cbAlignment = typeattr->cbAlignment;

    ITypeInfo_ReleaseTypeAttr(ti, typeattr);
    ITypeInfo_Release(ti);

    for(i = 0; TDATests[i].vt; ++i)
        testTDA(tl, &TDATests[i], ptr_size, hreftype, href_cbSizeInstance, href_cbAlignment, FALSE);

    ok(0 == ITypeLib_Release(tl), "typelib should have been released\n");

    DeleteFileA(filenameA);
}
