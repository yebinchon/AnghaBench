
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int Hi; int Lo; } ;
struct TYPE_13__ {int int64; } ;
struct TYPE_10__ {int int64; int Hi; int Lo; } ;
struct TYPE_12__ {int cbSizeofstruct; TYPE_1__ cySize; void* fStrikethrough; void* fUnderline; void* fItalic; scalar_t__ sCharset; scalar_t__ sWeight; int lpstrName; } ;
struct TYPE_11__ {scalar_t__ lfHeight; } ;
typedef int * LPVOID ;
typedef int LONGLONG ;
typedef scalar_t__ LONG ;
typedef TYPE_2__ LOGFONTA ;
typedef int IFont ;
typedef scalar_t__ HRESULT ;
typedef int HFONT ;
typedef TYPE_3__ FONTDESC ;
typedef scalar_t__ DWORD ;
typedef TYPE_4__ CY ;


 scalar_t__ E_FAIL ;
 void* FALSE ;
 scalar_t__ GetObjectA (int ,int,TYPE_2__*) ;
 int IFont_Release (int *) ;
 scalar_t__ IFont_SetRatio (int *,scalar_t__,scalar_t__) ;
 scalar_t__ IFont_get_Size (int *,TYPE_4__*) ;
 scalar_t__ IFont_get_hFont (int *,int *) ;
 int IID_IFont ;
 TYPE_6__ S (TYPE_4__) ;
 scalar_t__ S_OK ;
 int abs (scalar_t__) ;
 int arial_font ;
 int ok (int,char*,...) ;
 scalar_t__ pOleCreateFontIndirect (TYPE_3__*,int *,int **) ;

__attribute__((used)) static void test_ifont_size(LONGLONG size, LONG ratio_logical, LONG ratio_himetric,
                            LONG hfont_height, const char * test_name)
{
 FONTDESC fd;
 LPVOID pvObj = ((void*)0);
 IFont* ifnt = ((void*)0);
 HFONT hfont;
 LOGFONTA lf;
 CY psize;
 HRESULT hres;
        DWORD rtnval;

 fd.cbSizeofstruct = sizeof(FONTDESC);
 fd.lpstrName = arial_font;
 fd.cySize.int64 = size;
 fd.sWeight = 0;
 fd.sCharset = 0;
        fd.fItalic = FALSE;
        fd.fUnderline = FALSE;
        fd.fStrikethrough = FALSE;


 hres = pOleCreateFontIndirect(&fd, &IID_IFont, &pvObj);
 ifnt = pvObj;
 ok(hres == S_OK,"%s: OCFI returns 0x%08x instead of S_OK.\n",
  test_name, hres);
 ok(pvObj != ((void*)0),"%s: OCFI returns NULL.\n", test_name);


        hres = IFont_SetRatio(ifnt, ratio_logical, ratio_himetric);
        ok((ratio_logical && ratio_himetric) ? hres == S_OK : hres == E_FAIL,
           "%s: IFont_SetRatio unexpectedly returned 0x%08x.\n", test_name, hres);


 hres = IFont_get_Size(ifnt, &psize);
 ok(hres == S_OK,"%s: IFont_get_size returns 0x%08x instead of S_OK.\n",
  test_name, hres);


 ok((psize.int64 - size) < 10000 && (psize.int64 - size) > -10000,
  "%s: IFont_get_Size: Lo=%d, Hi=%d; expected Lo=%d, Hi=%d.\n",
  test_name, S(psize).Lo, S(psize).Hi, fd.cySize.Lo, fd.cySize.Hi);


 hres = IFont_get_hFont (ifnt, &hfont);
 ok(hres == S_OK, "%s: IFont_get_hFont returns 0x%08x instead of S_OK.\n",
  test_name, hres);
 rtnval = GetObjectA(hfont, sizeof(LOGFONTA), &lf);
        ok(rtnval > 0, "GetObject(hfont) failed\n");


 ok(abs(lf.lfHeight - hfont_height) <= 1,
  "%s: hFont has lf.lfHeight=%d, expected %d.\n",
  test_name, lf.lfHeight, hfont_height);


 IFont_Release(ifnt);
}
