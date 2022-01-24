#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_57__   TYPE_9__ ;
typedef  struct TYPE_56__   TYPE_8__ ;
typedef  struct TYPE_55__   TYPE_7__ ;
typedef  struct TYPE_54__   TYPE_6__ ;
typedef  struct TYPE_53__   TYPE_5__ ;
typedef  struct TYPE_52__   TYPE_4__ ;
typedef  struct TYPE_51__   TYPE_3__ ;
typedef  struct TYPE_50__   TYPE_2__ ;
typedef  struct TYPE_49__   TYPE_24__ ;
typedef  struct TYPE_48__   TYPE_1__ ;
typedef  struct TYPE_47__   TYPE_19__ ;
typedef  struct TYPE_46__   TYPE_15__ ;
typedef  struct TYPE_45__   TYPE_14__ ;
typedef  struct TYPE_44__   TYPE_13__ ;
typedef  struct TYPE_43__   TYPE_12__ ;
typedef  struct TYPE_42__   TYPE_11__ ;
typedef  struct TYPE_41__   TYPE_10__ ;

/* Type definitions */
struct TYPE_42__ {int flags; int /*<<< orphan*/  cell_border; int /*<<< orphan*/  cell_right_boundary; int /*<<< orphan*/  border; int /*<<< orphan*/  fmt; TYPE_8__* eol_str; int /*<<< orphan*/  pos; } ;
struct TYPE_53__ {int /*<<< orphan*/  pos; } ;
struct TYPE_52__ {int /*<<< orphan*/  len; int /*<<< orphan*/  pos; } ;
struct TYPE_51__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  len; int /*<<< orphan*/  str; int /*<<< orphan*/  style; int /*<<< orphan*/  pos; } ;
struct TYPE_50__ {int /*<<< orphan*/  fmt; int /*<<< orphan*/  len; int /*<<< orphan*/  pos; } ;
struct TYPE_48__ {int /*<<< orphan*/  border; int /*<<< orphan*/  fmt; int /*<<< orphan*/  pos; } ;
struct TYPE_43__ {TYPE_11__ split_para; TYPE_5__ join_paras; TYPE_4__ delete_run; TYPE_3__ insert_run; TYPE_2__ set_char_fmt; TYPE_1__ set_para_fmt; } ;
struct undo_item {int type; TYPE_12__ u; } ;
struct TYPE_57__ {int /*<<< orphan*/  border; int /*<<< orphan*/  nRightBoundary; } ;
struct TYPE_56__ {int /*<<< orphan*/  nLen; int /*<<< orphan*/  szData; } ;
struct TYPE_54__ {int /*<<< orphan*/  style; } ;
struct TYPE_55__ {TYPE_6__ run; } ;
struct TYPE_49__ {TYPE_7__ member; } ;
struct TYPE_47__ {int nFlags; TYPE_14__* pCell; int /*<<< orphan*/  border; int /*<<< orphan*/  fmt; } ;
struct TYPE_46__ {TYPE_24__* pRun; TYPE_14__* pPara; int /*<<< orphan*/  nOffset; } ;
struct TYPE_41__ {TYPE_9__ cell; TYPE_19__ para; } ;
struct TYPE_45__ {TYPE_10__ member; } ;
struct TYPE_44__ {scalar_t__ nUndoMode; } ;
typedef  TYPE_13__ ME_TextEditor ;
typedef  TYPE_14__ ME_DisplayItem ;
typedef  TYPE_15__ ME_Cursor ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int MEPF_CELL ; 
 int MEPF_ROWEND ; 
 int MEPF_ROWSTART ; 
 int /*<<< orphan*/  FUNC0 (TYPE_13__*,int /*<<< orphan*/ ,TYPE_15__*) ; 
 TYPE_14__* FUNC1 (TYPE_24__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_13__*,TYPE_15__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_13__*,TYPE_15__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_13__*,TYPE_14__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_13__*,TYPE_15__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__*,TYPE_15__*,TYPE_15__*,int /*<<< orphan*/ *) ; 
 TYPE_14__* FUNC7 (TYPE_13__*,TYPE_24__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_13__*,TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (TYPE_13__*,TYPE_19__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diParagraph ; 
 int /*<<< orphan*/  FUNC12 (TYPE_13__*,TYPE_14__*) ; 
 scalar_t__ umIgnore ; 
#define  undo_delete_run 135 
#define  undo_end_transaction 134 
#define  undo_insert_run 133 
#define  undo_join_paras 132 
#define  undo_potential_end_transaction 131 
#define  undo_set_char_fmt 130 
#define  undo_set_para_fmt 129 
#define  undo_split_para 128 

__attribute__((used)) static void FUNC13(ME_TextEditor *editor, struct undo_item *undo)
{

  if (editor->nUndoMode == umIgnore)
    return;
  FUNC9("Playing undo/redo item, id=%d\n", undo->type);

  switch(undo->type)
  {
  case undo_potential_end_transaction:
  case undo_end_transaction:
    FUNC11(0);
  case undo_set_para_fmt:
  {
    ME_Cursor tmp;
    ME_DisplayItem *para;
    FUNC0(editor, undo->u.set_para_fmt.pos, &tmp);
    para = FUNC1(tmp.pRun, diParagraph);
    FUNC10( editor, &para->member.para );
    para->member.para.fmt = undo->u.set_para_fmt.fmt;
    para->member.para.border = undo->u.set_para_fmt.border;
    FUNC12(editor, para);
    break;
  }
  case undo_set_char_fmt:
  {
    ME_Cursor start, end;
    FUNC0(editor, undo->u.set_char_fmt.pos, &start);
    end = start;
    FUNC5(editor, &end, undo->u.set_char_fmt.len, FALSE);
    FUNC6(editor, &start, &end, &undo->u.set_char_fmt.fmt);
    break;
  }
  case undo_insert_run:
  {
    ME_Cursor tmp;
    FUNC0(editor, undo->u.insert_run.pos, &tmp);
    FUNC2(editor, &tmp, undo->u.insert_run.style,
                         undo->u.insert_run.str,
                         undo->u.insert_run.len,
                         undo->u.insert_run.flags);
    break;
  }
  case undo_delete_run:
  {
    ME_Cursor tmp;
    FUNC0(editor, undo->u.delete_run.pos, &tmp);
    FUNC3(editor, &tmp, undo->u.delete_run.len, TRUE);
    break;
  }
  case undo_join_paras:
  {
    ME_Cursor tmp;
    FUNC0(editor, undo->u.join_paras.pos, &tmp);
    FUNC4(editor, tmp.pPara, TRUE);
    break;
  }
  case undo_split_para:
  {
    ME_Cursor tmp;
    ME_DisplayItem *this_para, *new_para;
    BOOL bFixRowStart;
    int paraFlags = undo->u.split_para.flags & (MEPF_ROWSTART|MEPF_CELL|MEPF_ROWEND);
    FUNC0(editor, undo->u.split_para.pos, &tmp);
    if (tmp.nOffset)
      FUNC8(editor, &tmp);
    this_para = tmp.pPara;
    bFixRowStart = this_para->member.para.nFlags & MEPF_ROWSTART;
    if (bFixRowStart)
    {
      /* Re-insert the paragraph before the table, making sure the nFlag value
       * is correct. */
      this_para->member.para.nFlags &= ~MEPF_ROWSTART;
    }
    new_para = FUNC7(editor, tmp.pRun, tmp.pRun->member.run.style,
                                 undo->u.split_para.eol_str->szData, undo->u.split_para.eol_str->nLen, paraFlags);
    if (bFixRowStart)
      new_para->member.para.nFlags |= MEPF_ROWSTART;
    new_para->member.para.fmt = undo->u.split_para.fmt;
    new_para->member.para.border = undo->u.split_para.border;
    if (paraFlags)
    {
      ME_DisplayItem *pCell = new_para->member.para.pCell;
      pCell->member.cell.nRightBoundary = undo->u.split_para.cell_right_boundary;
      pCell->member.cell.border = undo->u.split_para.cell_border;
    }
    break;
  }
  }
}