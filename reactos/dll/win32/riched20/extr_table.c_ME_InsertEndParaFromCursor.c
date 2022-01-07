
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_9__ {int pRun; int * pPara; scalar_t__ nOffset; } ;
struct TYPE_8__ {TYPE_2__* pCursors; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int ME_Style ;
typedef int ME_DisplayItem ;
typedef TYPE_2__ ME_Cursor ;


 int ME_FindItemFwd (int *,int ) ;
 int * ME_GetInsertStyle (TYPE_1__*,int) ;
 int ME_ReleaseStyle (int *) ;
 int * ME_SplitParagraph (TYPE_1__*,int ,int *,int const*,int,int) ;
 int ME_SplitRunSimple (TYPE_1__*,TYPE_2__*) ;
 int diRun ;

__attribute__((used)) static ME_DisplayItem* ME_InsertEndParaFromCursor(ME_TextEditor *editor,
                                                  int nCursor,
                                                  const WCHAR *eol_str, int eol_len,
                                                  int paraFlags)
{
  ME_Style *pStyle = ME_GetInsertStyle(editor, nCursor);
  ME_DisplayItem *tp;
  ME_Cursor* cursor = &editor->pCursors[nCursor];
  if (cursor->nOffset)
    ME_SplitRunSimple(editor, cursor);

  tp = ME_SplitParagraph(editor, cursor->pRun, pStyle, eol_str, eol_len, paraFlags);
  ME_ReleaseStyle(pStyle);
  cursor->pPara = tp;
  cursor->pRun = ME_FindItemFwd(tp, diRun);
  return tp;
}
