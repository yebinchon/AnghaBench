
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cpMin; scalar_t__ cpMax; } ;
struct TYPE_6__ {scalar_t__ lpOleCallback; scalar_t__ cPasswordMask; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int ME_Cursor ;
typedef int * LPDATAOBJECT ;
typedef int HRESULT ;
typedef TYPE_2__ CHARRANGE ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int IDataObject_Release (int *) ;
 int IRichEditOleCallback_GetClipboardData (scalar_t__,TYPE_2__*,int ,int **) ;
 scalar_t__ ME_GetCursorOfs (int const*) ;
 int ME_GetDataObject (TYPE_1__*,int const*,int,int **) ;
 int OleSetClipboard (int *) ;
 int RECO_COPY ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;

__attribute__((used)) static BOOL ME_Copy(ME_TextEditor *editor, const ME_Cursor *start, int nChars)
{
  LPDATAOBJECT dataObj = ((void*)0);
  HRESULT hr = S_OK;

  if (editor->cPasswordMask)
    return FALSE;

  if(editor->lpOleCallback)
  {
    CHARRANGE range;
    range.cpMin = ME_GetCursorOfs(start);
    range.cpMax = range.cpMin + nChars;
    hr = IRichEditOleCallback_GetClipboardData(editor->lpOleCallback, &range, RECO_COPY, &dataObj);
  }
  if(FAILED(hr) || !dataObj)
    hr = ME_GetDataObject(editor, start, nChars, &dataObj);
  if(SUCCEEDED(hr)) {
    hr = OleSetClipboard(dataObj);
    IDataObject_Release(dataObj);
  }
  return SUCCEEDED(hr);
}
