
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbSize; int fMask; int nMax; int nMin; int nPos; } ;
typedef TYPE_1__ SCROLLINFO ;
typedef int LONG ;
typedef int ITextRange ;
typedef int ITextDocument ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;


 int GetScrollInfo (int ,int ,TYPE_1__*) ;
 scalar_t__ ITextDocument_Range (int *,int,int,int **) ;
 scalar_t__ ITextRange_ScrollIntoView (int *,int ) ;
 int SB_VERT ;
 int SIF_POS ;
 int SIF_RANGE ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__,...) ;

__attribute__((used)) static void check_range(HWND w, ITextDocument* doc, int first, int lim,
                        LONG bStart, int expected_nonzero)
{
  SCROLLINFO si;
  ITextRange *txtRge = ((void*)0);
  HRESULT hres;

  si.cbSize = sizeof(SCROLLINFO);
  si.fMask = SIF_POS | SIF_RANGE;

  hres = ITextDocument_Range(doc, first, lim, &txtRge);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  hres = ITextRange_ScrollIntoView(txtRge, bStart);
  ok(hres == S_OK, "got 0x%08x\n", hres);
  GetScrollInfo(w, SB_VERT, &si);
  if (expected_nonzero) {
    ok(si.nPos != 0,
       "Scrollbar at 0, should be >0. (TextRange %d-%d, scroll range %d-%d.)\n",
       first, lim, si.nMin, si.nMax);
  } else {
    ok(si.nPos == 0,
       "Scrollbar at %d, should be 0. (TextRange %d-%d, scroll range %d-%d.)\n",
       si.nPos, first, lim, si.nMin, si.nMax);
  }
}
