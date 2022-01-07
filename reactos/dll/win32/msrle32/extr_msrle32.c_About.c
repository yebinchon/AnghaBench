
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LRESULT ;
typedef int HWND ;
typedef int CodecInfo ;


 int ARRAY_SIZE (int *) ;
 int ICERR_OK ;
 int IDS_ABOUT ;
 int IDS_NAME ;
 int LoadStringW (scalar_t__,int ,int *,int ) ;
 int MB_ICONINFORMATION ;
 int MB_OK ;
 scalar_t__ MSRLE32_hModule ;
 int MessageBoxW (int ,int *,int *,int) ;
 int assert (int) ;

__attribute__((used)) static LRESULT About(CodecInfo *pi, HWND hWnd)
{
  WCHAR szTitle[20];
  WCHAR szAbout[128];


  assert(MSRLE32_hModule != 0);

  LoadStringW(MSRLE32_hModule, IDS_NAME, szTitle, ARRAY_SIZE(szTitle));
  LoadStringW(MSRLE32_hModule, IDS_ABOUT, szAbout, ARRAY_SIZE(szAbout));

  MessageBoxW(hWnd, szAbout, szTitle, MB_OK|MB_ICONINFORMATION);

  return ICERR_OK;
}
