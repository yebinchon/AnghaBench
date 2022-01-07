
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fontdesc ;
struct TYPE_4__ {int int64; } ;
struct TYPE_5__ {int cbSizeofstruct; void* fStrikethrough; void* fUnderline; void* fItalic; int sCharset; int sWeight; TYPE_1__ cySize; int lpstrName; } ;
typedef int IUnknown ;
typedef int IFont ;
typedef scalar_t__ HRESULT ;
typedef TYPE_2__ FONTDESC ;


 int ANSI_CHARSET ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_StdFont ;
 scalar_t__ CoGetClassObject (int *,int ,int *,int *,void**) ;
 int EXPECT_HR (scalar_t__,scalar_t__) ;
 void* FALSE ;
 int FW_NORMAL ;
 int IFont_Release (int *) ;
 int IID_IClassFactory ;
 int IID_IFont ;
 int IID_IUnknown ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ OleInitialize (int *) ;
 int OleUninitialize () ;
 scalar_t__ S_OK ;
 int arial_font ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pOleCreateFontIndirect (TYPE_2__*,int *,void**) ;

__attribute__((used)) static void test_OleCreateFontIndirect(void)
{
    FONTDESC fontdesc;
    IUnknown *unk, *unk2;
    IFont *font;
    HRESULT hr;

    fontdesc.cbSizeofstruct = sizeof(fontdesc);
    fontdesc.lpstrName = arial_font;
    fontdesc.cySize.int64 = 12 * 10000;
    fontdesc.sWeight = FW_NORMAL;
    fontdesc.sCharset = ANSI_CHARSET;
    fontdesc.fItalic = FALSE;
    fontdesc.fUnderline = FALSE;
    fontdesc.fStrikethrough = FALSE;

    hr = pOleCreateFontIndirect(&fontdesc, &IID_IFont, (void**)&font);
    EXPECT_HR(hr, S_OK);
    IFont_Release(font);


    fontdesc.cbSizeofstruct = sizeof(fontdesc)-1;
    hr = pOleCreateFontIndirect(&fontdesc, &IID_IFont, (void**)&font);
    EXPECT_HR(hr, S_OK);
    IFont_Release(font);

    fontdesc.cbSizeofstruct = sizeof(fontdesc)+1;
    hr = pOleCreateFontIndirect(&fontdesc, &IID_IFont, (void**)&font);
    EXPECT_HR(hr, S_OK);
    IFont_Release(font);

    fontdesc.cbSizeofstruct = 0;
    hr = pOleCreateFontIndirect(&fontdesc, &IID_IFont, (void**)&font);
    EXPECT_HR(hr, S_OK);
    IFont_Release(font);

    hr = OleInitialize(((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = CoGetClassObject(&CLSID_StdFont, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IClassFactory, (void**)&unk);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IUnknown_QueryInterface(unk, &IID_IUnknown, (void**)&unk2);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    IUnknown_Release(unk);
    IUnknown_Release(unk2);

    OleUninitialize();
}
