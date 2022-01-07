
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fontdesc ;
struct TYPE_4__ {int int64; } ;
struct TYPE_5__ {int cbSizeofstruct; void* fStrikethrough; void* fUnderline; void* fItalic; scalar_t__ sCharset; int sWeight; TYPE_1__ cySize; int lpstrName; } ;
typedef int IFont ;
typedef int HRESULT ;
typedef TYPE_2__ FONTDESC ;


 int CTL_E_INVALIDPROPERTYVALUE ;
 int EXPECT_HR (int ,int ) ;
 int E_POINTER ;
 void* FALSE ;
 int FW_NORMAL ;
 int IFont_Release (int *) ;
 int IFont_get_Bold (int *,int *) ;
 int IFont_get_Name (int *,int *) ;
 int IFont_get_Size (int *,int *) ;
 int IFont_put_Name (int *,int *) ;
 int IID_IFont ;
 int MSSansSerif_font ;
 int S_OK ;
 int pOleCreateFontIndirect (TYPE_2__*,int *,void**) ;

__attribute__((used)) static void test_returns(void)
{
    IFont *pFont;
    FONTDESC fontdesc;
    HRESULT hr;

    fontdesc.cbSizeofstruct = sizeof(fontdesc);
    fontdesc.lpstrName = MSSansSerif_font;
    fontdesc.cySize.int64 = 12 * 10000;
    fontdesc.sWeight = FW_NORMAL;
    fontdesc.sCharset = 0;
    fontdesc.fItalic = FALSE;
    fontdesc.fUnderline = FALSE;
    fontdesc.fStrikethrough = FALSE;

    hr = pOleCreateFontIndirect(&fontdesc, &IID_IFont, (void **)&pFont);
    EXPECT_HR(hr, S_OK);

    hr = IFont_put_Name(pFont, ((void*)0));
    EXPECT_HR(hr, CTL_E_INVALIDPROPERTYVALUE);

    hr = IFont_get_Name(pFont, ((void*)0));
    EXPECT_HR(hr, E_POINTER);

    hr = IFont_get_Size(pFont, ((void*)0));
    EXPECT_HR(hr, E_POINTER);

    hr = IFont_get_Bold(pFont, ((void*)0));
    EXPECT_HR(hr, E_POINTER);

    IFont_Release(pFont);
}
