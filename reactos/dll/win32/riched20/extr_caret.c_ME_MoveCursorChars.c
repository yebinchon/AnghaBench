
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ nOffset; TYPE_4__* pRun; TYPE_4__* pPara; } ;
struct TYPE_13__ {scalar_t__ nCharOfs; scalar_t__ len; } ;
struct TYPE_12__ {scalar_t__ nCharOfs; TYPE_4__* next_para; TYPE_4__* prev_para; } ;
struct TYPE_14__ {TYPE_2__ run; TYPE_1__ para; } ;
struct TYPE_15__ {TYPE_3__ member; } ;
typedef int ME_TextEditor ;
typedef TYPE_4__ ME_DisplayItem ;
typedef TYPE_5__ ME_Cursor ;
typedef scalar_t__ BOOL ;


 void* ME_FindItemBack (TYPE_4__*,int ) ;
 void* ME_FindItemFwd (TYPE_4__*,int ) ;
 int ME_GetCursorOfs (TYPE_5__*) ;
 int ME_GetTextLength (int *) ;
 int ME_SetCursorToEnd (int *,TYPE_5__*,scalar_t__) ;
 int ME_SetCursorToStart (int *,TYPE_5__*) ;
 int diRun ;

int ME_MoveCursorChars(ME_TextEditor *editor, ME_Cursor *cursor, int nRelOfs, BOOL final_eop)
{
  cursor->nOffset += nRelOfs;
  if (cursor->nOffset < 0)
  {
    cursor->nOffset += cursor->pRun->member.run.nCharOfs;
    if (cursor->nOffset >= 0)
    {

      do {
        cursor->pRun = ME_FindItemBack(cursor->pRun, diRun);
      } while (cursor->nOffset < cursor->pRun->member.run.nCharOfs);
      cursor->nOffset -= cursor->pRun->member.run.nCharOfs;
      return nRelOfs;
    }

    cursor->nOffset += cursor->pPara->member.para.nCharOfs;
    if (cursor->nOffset <= 0)
    {

      nRelOfs -= cursor->nOffset;
      ME_SetCursorToStart(editor, cursor);
      return nRelOfs;
    }


    do {
      cursor->pPara = cursor->pPara->member.para.prev_para;
    } while (cursor->nOffset < cursor->pPara->member.para.nCharOfs);
    cursor->nOffset -= cursor->pPara->member.para.nCharOfs;

    cursor->pRun = ME_FindItemBack(cursor->pPara->member.para.next_para, diRun);
    while (cursor->nOffset < cursor->pRun->member.run.nCharOfs) {
      cursor->pRun = ME_FindItemBack(cursor->pRun, diRun);
    }
    cursor->nOffset -= cursor->pRun->member.run.nCharOfs;
  } else if (cursor->nOffset >= cursor->pRun->member.run.len) {
    ME_DisplayItem *next_para;
    int new_offset;

    new_offset = ME_GetCursorOfs(cursor);
    next_para = cursor->pPara->member.para.next_para;
    if (new_offset < next_para->member.para.nCharOfs)
    {

      do {
        cursor->nOffset -= cursor->pRun->member.run.len;
        cursor->pRun = ME_FindItemFwd(cursor->pRun, diRun);
      } while (cursor->nOffset >= cursor->pRun->member.run.len);
      return nRelOfs;
    }

    if (new_offset >= ME_GetTextLength(editor) + (final_eop ? 1 : 0))
    {

      ME_SetCursorToEnd(editor, cursor, final_eop);
      nRelOfs -= new_offset - (ME_GetTextLength(editor) + (final_eop ? 1 : 0));
      return nRelOfs;
    }


    do {
      cursor->pPara = next_para;
      next_para = next_para->member.para.next_para;
    } while (new_offset >= next_para->member.para.nCharOfs);

    cursor->nOffset = new_offset - cursor->pPara->member.para.nCharOfs;
    cursor->pRun = ME_FindItemFwd(cursor->pPara, diRun);
    while (cursor->nOffset >= cursor->pRun->member.run.len)
    {
      cursor->nOffset -= cursor->pRun->member.run.len;
      cursor->pRun = ME_FindItemFwd(cursor->pRun, diRun);
    }
  }
  return nRelOfs;
}
