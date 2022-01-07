
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * pCursors; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int ME_Cursor ;
typedef int LRESULT ;
typedef int EDITSTREAM ;
typedef int DWORD ;


 size_t ME_GetSelectionOfs (TYPE_1__*,int*,int*) ;
 int ME_GetTextLength (TYPE_1__*) ;
 int ME_SetCursorToStart (TYPE_1__*,int *) ;
 int ME_StreamOutRange (TYPE_1__*,int,int *,int,int *) ;
 int SFF_SELECTION ;
 int SF_RTF ;

LRESULT
ME_StreamOut(ME_TextEditor *editor, DWORD dwFormat, EDITSTREAM *stream)
{
  ME_Cursor start;
  int nChars;

  if (dwFormat & SFF_SELECTION) {
    int nStart, nTo;
    start = editor->pCursors[ME_GetSelectionOfs(editor, &nStart, &nTo)];
    nChars = nTo - nStart;
  } else {
    ME_SetCursorToStart(editor, &start);
    nChars = ME_GetTextLength(editor);

    if (dwFormat & SF_RTF)
      nChars++;
  }
  return ME_StreamOutRange(editor, dwFormat, &start, nChars, stream);
}
