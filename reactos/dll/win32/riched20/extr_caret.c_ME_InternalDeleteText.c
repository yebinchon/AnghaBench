
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_8__ ;
typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_13__ ;


struct TYPE_41__ {int nOffset; TYPE_13__* pRun; TYPE_7__* pPara; } ;
struct TYPE_34__ {int nCharOfs; int nFlags; int fmt; TYPE_7__* prev_para; } ;
struct TYPE_35__ {TYPE_1__ para; } ;
struct TYPE_40__ {TYPE_2__ member; } ;
struct TYPE_39__ {int nCharOfs; int len; int nFlags; TYPE_3__* para; int style; } ;
struct TYPE_38__ {int nCursors; TYPE_8__* pCursors; int bEmulateVersion10; } ;
struct TYPE_37__ {TYPE_6__ run; } ;
struct TYPE_36__ {int text; } ;
struct TYPE_33__ {scalar_t__ type; TYPE_4__ member; } ;
typedef TYPE_5__ ME_TextEditor ;
typedef TYPE_6__ ME_Run ;
typedef TYPE_7__ ME_DisplayItem ;
typedef TYPE_8__ ME_Cursor ;
typedef int BOOL ;


 int FALSE ;
 int MEPF_ROWSTART ;
 int MERF_ENDPARA ;
 int ME_CheckCharOffsets (TYPE_5__*) ;
 int ME_CursorFromCharOfs (TYPE_5__*,int,TYPE_8__*) ;
 int ME_DestroyDisplayItem (TYPE_13__*) ;
 int ME_FindItemBack (TYPE_13__*,int ) ;
 void* ME_FindItemFwd (TYPE_13__*,int ) ;
 int ME_GetCursorOfs (TYPE_8__*) ;
 int ME_GetTextLength (TYPE_5__*) ;
 int ME_JoinParagraphs (TYPE_5__*,TYPE_7__*,int) ;
 int ME_PrevRun (TYPE_7__**,TYPE_13__**,int) ;
 int ME_PropagateCharOffset (TYPE_13__*,int) ;
 int ME_ProtectPartialTableDeletion (TYPE_5__*,TYPE_8__*,int*) ;
 int ME_Remove (TYPE_13__*) ;
 int ME_SetDefaultParaFormat (TYPE_5__*,int *) ;
 int ME_SkipAndPropagateCharOffset (TYPE_13__*,int) ;
 int ME_StrDeleteV (int ,int,int) ;
 int TRACE (char*,...) ;
 int TRUE ;
 int add_undo_insert_run (TYPE_5__*,int,int ,int,int,int ) ;
 int assert (int) ;
 int debugstr_run (TYPE_6__*) ;
 int diParagraph ;
 int diParagraphOrEnd ;
 scalar_t__ diRun ;
 int diRunOrParagraphOrEnd ;
 int get_text (TYPE_6__*,int) ;
 int mark_para_rewrap (TYPE_5__*,int ) ;
 int min (int,int) ;

BOOL ME_InternalDeleteText(ME_TextEditor *editor, ME_Cursor *start,
                           int nChars, BOOL bForce)
{
  ME_Cursor c = *start;
  int nOfs = ME_GetCursorOfs(start), text_len = ME_GetTextLength( editor );
  int shift = 0;
  int totalChars = nChars;
  ME_DisplayItem *start_para;
  BOOL delete_all = FALSE;


  nChars = min(nChars, text_len - nOfs);
  if (nChars == text_len) delete_all = TRUE;
  start_para = c.pPara;

  if (!bForce)
  {
    ME_ProtectPartialTableDeletion(editor, &c, &nChars);
    if (nChars == 0)
      return FALSE;
  }

  while(nChars > 0)
  {
    ME_Run *run;
    ME_CursorFromCharOfs(editor, nOfs+nChars, &c);
    if (!c.nOffset &&
        nOfs+nChars == (c.pRun->member.run.nCharOfs
                        + c.pPara->member.para.nCharOfs))
    {


      ME_PrevRun(&c.pPara, &c.pRun, TRUE);
      c.nOffset = c.pRun->member.run.len;
    }
    run = &c.pRun->member.run;
    if (run->nFlags & MERF_ENDPARA) {
      int eollen = c.pRun->member.run.len;
      BOOL keepFirstParaFormat;

      if (!ME_FindItemFwd(c.pRun, diParagraph))
      {
        return TRUE;
      }
      keepFirstParaFormat = (totalChars == nChars && nChars <= eollen &&
                             run->nCharOfs);
      if (!editor->bEmulateVersion10)
      {
        ME_DisplayItem *next_para = ME_FindItemFwd(c.pRun, diParagraphOrEnd);
        ME_DisplayItem *this_para = next_para->member.para.prev_para;



        if (this_para == start_para &&
            next_para->member.para.nFlags & MEPF_ROWSTART)
        {




          if (nOfs > this_para->member.para.nCharOfs) {

            nChars -= (eollen < nChars) ? eollen : nChars;
            continue;
          }
          keepFirstParaFormat = TRUE;
        }
      }
      ME_JoinParagraphs(editor, c.pPara, keepFirstParaFormat);

      ME_CheckCharOffsets(editor);
      nChars -= (eollen < nChars) ? eollen : nChars;
      continue;
    }
    else
    {
      ME_Cursor cursor;
      int nCharsToDelete = min(nChars, c.nOffset);
      int i;

      c.nOffset -= nCharsToDelete;

      mark_para_rewrap(editor, ME_FindItemBack(c.pRun, diParagraph));

      cursor = c;



      nChars -= nCharsToDelete;
      shift -= nCharsToDelete;
      TRACE("Deleting %d (remaining %d) chars at %d in %s (%d)\n",
        nCharsToDelete, nChars, c.nOffset,
        debugstr_run( run ), run->len);



      add_undo_insert_run( editor, nOfs + nChars, get_text( run, c.nOffset ), nCharsToDelete, run->nFlags, run->style );

      ME_StrDeleteV(run->para->text, run->nCharOfs + c.nOffset, nCharsToDelete);
      run->len -= nCharsToDelete;
      TRACE("Post deletion string: %s (%d)\n", debugstr_run( run ), run->len);
      TRACE("Shift value: %d\n", shift);


      for (i=-1; i<editor->nCursors; i++) {
        ME_Cursor *pThisCur = editor->pCursors + i;
        if (i == -1) pThisCur = &c;
        if (pThisCur->pRun == cursor.pRun) {
          if (pThisCur->nOffset > cursor.nOffset) {
            if (pThisCur->nOffset-cursor.nOffset < nCharsToDelete)
              pThisCur->nOffset = cursor.nOffset;
            else
              pThisCur->nOffset -= nCharsToDelete;
            assert(pThisCur->nOffset >= 0);
            assert(pThisCur->nOffset <= run->len);
          }
          if (pThisCur->nOffset == run->len)
          {
            pThisCur->pRun = ME_FindItemFwd(pThisCur->pRun, diRunOrParagraphOrEnd);
            assert(pThisCur->pRun->type == diRun);
            pThisCur->nOffset = 0;
          }
        }
      }



      if (c.pRun == cursor.pRun)
        ME_SkipAndPropagateCharOffset(c.pRun, shift);
      else
        ME_PropagateCharOffset(c.pRun, shift);

      if (!cursor.pRun->member.run.len)
      {
        TRACE("Removing empty run\n");
        ME_Remove(cursor.pRun);
        ME_DestroyDisplayItem(cursor.pRun);
      }

      shift = 0;



      continue;
    }
  }
  if (delete_all) ME_SetDefaultParaFormat( editor, &start_para->member.para.fmt );
  return TRUE;
}
