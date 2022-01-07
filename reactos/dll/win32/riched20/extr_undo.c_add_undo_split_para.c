
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int flags; int cell_right_boundary; int cell_border; int border; int fmt; TYPE_6__* eol_str; scalar_t__ pos; } ;
struct TYPE_16__ {TYPE_4__ split_para; } ;
struct undo_item {TYPE_5__ u; } ;
struct TYPE_19__ {int nRightBoundary; int border; } ;
struct TYPE_18__ {TYPE_3__* prev_para; int border; int fmt; scalar_t__ nCharOfs; } ;
struct TYPE_17__ {scalar_t__ nLen; } ;
struct TYPE_12__ {int nFlags; } ;
struct TYPE_13__ {TYPE_1__ para; } ;
struct TYPE_14__ {TYPE_2__ member; } ;
typedef int ME_TextEditor ;
typedef TYPE_6__ ME_String ;
typedef TYPE_7__ ME_Paragraph ;
typedef TYPE_8__ ME_Cell ;
typedef int BOOL ;


 int FALSE ;
 int MEPF_CELL ;
 int TRUE ;
 struct undo_item* add_undo (int *,int ) ;
 int undo_split_para ;

BOOL add_undo_split_para( ME_TextEditor *editor, const ME_Paragraph *para, ME_String *eol_str, const ME_Cell *cell )
{
    struct undo_item *undo = add_undo( editor, undo_split_para );
    if (!undo) return FALSE;

    undo->u.split_para.pos = para->nCharOfs - eol_str->nLen;
    undo->u.split_para.eol_str = eol_str;
    undo->u.split_para.fmt = para->fmt;
    undo->u.split_para.border = para->border;
    undo->u.split_para.flags = para->prev_para->member.para.nFlags & ~MEPF_CELL;

    if (cell)
    {
        undo->u.split_para.cell_border = cell->border;
        undo->u.split_para.cell_right_boundary = cell->nRightBoundary;
    }
    return TRUE;
}
