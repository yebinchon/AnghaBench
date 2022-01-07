
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_24__ {int nOffset; TYPE_6__* pRun; } ;
struct TYPE_18__ {int len; int nFlags; TYPE_4__* style; scalar_t__ nCharOfs; TYPE_5__* para; } ;
struct TYPE_19__ {TYPE_1__ run; } ;
struct TYPE_23__ {TYPE_2__ member; } ;
struct TYPE_20__ {TYPE_4__* style; } ;
struct TYPE_22__ {TYPE_3__ para_num; scalar_t__ nCharOfs; } ;
struct TYPE_21__ {int fmt; } ;
typedef int ME_TextEditor ;
typedef TYPE_4__ ME_Style ;
typedef TYPE_5__ ME_Paragraph ;
typedef TYPE_6__ ME_DisplayItem ;
typedef TYPE_7__ ME_Cursor ;
typedef int CHARFORMAT2W ;


 int MERF_ENDPARA ;
 TYPE_4__* ME_ApplyStyle (int *,TYPE_4__*,int *) ;
 TYPE_6__* ME_FindItemFwd (TYPE_6__*,int ) ;
 int ME_ReleaseStyle (TYPE_4__*) ;
 TYPE_6__* ME_SplitRunSimple (int *,TYPE_7__*) ;
 int add_undo_set_char_fmt (int *,scalar_t__,scalar_t__,int *) ;
 int diRun ;
 int get_di_from_para (TYPE_5__*) ;
 int mark_para_rewrap (int *,int ) ;

void ME_SetCharFormat(ME_TextEditor *editor, ME_Cursor *start, ME_Cursor *end, CHARFORMAT2W *pFmt)
{
  ME_DisplayItem *run, *start_run = start->pRun, *end_run = ((void*)0);

  if (end && start->pRun == end->pRun && start->nOffset == end->nOffset)
    return;

  if (start->nOffset == start->pRun->member.run.len)
    start_run = ME_FindItemFwd( start->pRun, diRun );
  else if (start->nOffset)
  {


    int split_offset = start->nOffset;
    ME_DisplayItem *split_run = ME_SplitRunSimple(editor, start);
    start_run = start->pRun;
    if (end && end->pRun == split_run)
    {
      end->pRun = start->pRun;
      end->nOffset -= split_offset;
    }
  }

  if (end)
  {
    if (end->nOffset == end->pRun->member.run.len)
      end_run = ME_FindItemFwd( end->pRun, diRun );
    else
    {
      if (end->nOffset) ME_SplitRunSimple(editor, end);
      end_run = end->pRun;
    }
  }

  for (run = start_run; run != end_run; run = ME_FindItemFwd( run, diRun ))
  {
    ME_Style *new_style = ME_ApplyStyle(editor, run->member.run.style, pFmt);
    ME_Paragraph *para = run->member.run.para;

    add_undo_set_char_fmt( editor, run->member.run.para->nCharOfs + run->member.run.nCharOfs,
                           run->member.run.len, &run->member.run.style->fmt );
    ME_ReleaseStyle(run->member.run.style);
    run->member.run.style = new_style;


    if ((run->member.run.nFlags & MERF_ENDPARA) && para->para_num.style)
    {
      ME_ReleaseStyle(para->para_num.style);
      para->para_num.style = ((void*)0);
    }
    mark_para_rewrap(editor, get_di_from_para(para));
  }
}
