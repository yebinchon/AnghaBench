
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fontdesc ;
struct TYPE_4__ {int int64; } ;
struct TYPE_5__ {int cbSizeofstruct; int lpstrName; void* fStrikethrough; void* fUnderline; void* fItalic; scalar_t__ sCharset; int sWeight; TYPE_1__ cySize; } ;
typedef scalar_t__ SHORT ;
typedef int IFont ;
typedef int HRESULT ;
typedef TYPE_2__ FONTDESC ;
typedef int BSTR ;


 scalar_t__ ANSI_CHARSET ;
 int EXPECT_HR (int ,int ) ;
 void* FALSE ;
 int FW_NORMAL ;
 int IFont_Release (int *) ;
 int IFont_get_Charset (int *,scalar_t__*) ;
 int IFont_get_Name (int *,int *) ;
 int IFont_put_Name (int *,int ) ;
 int IID_IFont ;
 scalar_t__ SYMBOL_CHARSET ;
 int S_OK ;
 int SysAllocString (int ) ;
 int SysFreeString (int ) ;
 int arial_font ;
 int lstrcmpiW (int ,int ) ;
 int marlett_font ;
 int ok (int,char*,scalar_t__) ;
 int pOleCreateFontIndirect (TYPE_2__*,int *,void**) ;
 scalar_t__ wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_realization(void)
{
    IFont *font;
    FONTDESC fontdesc;
    HRESULT hr;
    BSTR name;
    SHORT cs;




    fontdesc.cbSizeofstruct = sizeof(fontdesc);
    fontdesc.lpstrName = marlett_font;
    fontdesc.cySize.int64 = 12 * 10000;
    fontdesc.sWeight = FW_NORMAL;
    fontdesc.sCharset = ANSI_CHARSET;
    fontdesc.fItalic = FALSE;
    fontdesc.fUnderline = FALSE;
    fontdesc.fStrikethrough = FALSE;

    hr = pOleCreateFontIndirect(&fontdesc, &IID_IFont, (void **)&font);
    EXPECT_HR(hr, S_OK);

    hr = IFont_get_Charset(font, &cs);
    EXPECT_HR(hr, S_OK);
    ok(cs == ANSI_CHARSET, "got charset %d\n", cs);

    IFont_Release(font);



    fontdesc.lpstrName = arial_font;

    hr = pOleCreateFontIndirect(&fontdesc, &IID_IFont, (void **)&font);
    EXPECT_HR(hr, S_OK);

    hr = IFont_get_Charset(font, &cs);
    EXPECT_HR(hr, S_OK);
    ok(cs == ANSI_CHARSET, "got charset %d\n", cs);

    name = SysAllocString(marlett_font);
    hr = IFont_put_Name(font, name);
    EXPECT_HR(hr, S_OK);
    SysFreeString(name);

    hr = IFont_get_Name(font, &name);
    EXPECT_HR(hr, S_OK);
    ok(!lstrcmpiW(name, marlett_font), "got name %s\n", wine_dbgstr_w(name));
    SysFreeString(name);

    hr = IFont_get_Charset(font, &cs);
    EXPECT_HR(hr, S_OK);
    ok(cs == SYMBOL_CHARSET, "got charset %d\n", cs);

    IFont_Release(font);
}
