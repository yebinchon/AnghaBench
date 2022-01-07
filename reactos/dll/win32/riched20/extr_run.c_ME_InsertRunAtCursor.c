
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_29__ {int text; scalar_t__ nCharOfs; } ;
struct TYPE_28__ {scalar_t__ nOffset; TYPE_5__* pRun; } ;
struct TYPE_23__ {scalar_t__ len; TYPE_8__* para; scalar_t__ nCharOfs; } ;
struct TYPE_24__ {TYPE_1__ run; } ;
struct TYPE_27__ {TYPE_2__ member; } ;
struct TYPE_26__ {int nCursors; TYPE_3__* pCursors; } ;
struct TYPE_25__ {int nOffset; TYPE_5__* pRun; } ;
typedef TYPE_4__ ME_TextEditor ;
typedef int ME_Style ;
typedef TYPE_5__ ME_DisplayItem ;
typedef TYPE_6__ ME_Cursor ;


 TYPE_5__* ME_FindItemBack (TYPE_5__*,int ) ;
 TYPE_5__* ME_FindItemFwd (TYPE_5__*,int ) ;
 int ME_InsertBefore (TYPE_5__*,TYPE_5__*) ;
 int ME_InsertString (int ,scalar_t__,int const*,int) ;
 TYPE_5__* ME_MakeRun (int *,int) ;
 int ME_PropagateCharOffset (TYPE_5__*,int) ;
 int ME_SplitRunSimple (TYPE_4__*,TYPE_6__*) ;
 int TRACE (char*,int) ;
 int add_undo_delete_run (TYPE_4__*,scalar_t__,int) ;
 int diRun ;
 int get_di_from_para (TYPE_8__*) ;
 int mark_para_rewrap (TYPE_4__*,int ) ;

ME_DisplayItem *
ME_InsertRunAtCursor(ME_TextEditor *editor, ME_Cursor *cursor, ME_Style *style,
                     const WCHAR *str, int len, int flags)
{
  ME_DisplayItem *pDI, *insert_before = cursor->pRun, *prev;

  if (cursor->nOffset)
  {
    if (cursor->nOffset == cursor->pRun->member.run.len)
    {
      insert_before = ME_FindItemFwd( cursor->pRun, diRun );
      if (!insert_before) insert_before = cursor->pRun;
    }
    else
    {
      ME_SplitRunSimple( editor, cursor );
      insert_before = cursor->pRun;
    }
  }

  add_undo_delete_run( editor, insert_before->member.run.para->nCharOfs +
                       insert_before->member.run.nCharOfs, len );

  pDI = ME_MakeRun(style, flags);
  pDI->member.run.nCharOfs = insert_before->member.run.nCharOfs;
  pDI->member.run.len = len;
  pDI->member.run.para = insert_before->member.run.para;
  ME_InsertString( pDI->member.run.para->text, pDI->member.run.nCharOfs, str, len );
  ME_InsertBefore( insert_before, pDI );
  TRACE("Shift length:%d\n", len);
  ME_PropagateCharOffset( insert_before, len );
  mark_para_rewrap(editor, get_di_from_para(insert_before->member.run.para));


  prev = ME_FindItemBack( pDI, diRun );
  if (prev)
  {
    int i;

    for (i = 0; i < editor->nCursors; i++)
    {
      if (editor->pCursors[i].pRun == prev &&
          editor->pCursors[i].nOffset == prev->member.run.len)
      {
        editor->pCursors[i].pRun = pDI;
        editor->pCursors[i].nOffset = len;
      }
    }
  }

  return pDI;
}
