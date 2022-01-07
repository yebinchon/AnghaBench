
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int border; int fmt; int pos; } ;
struct TYPE_6__ {TYPE_1__ set_para_fmt; } ;
struct undo_item {TYPE_2__ u; } ;
struct TYPE_7__ {int border; int fmt; int nCharOfs; } ;
typedef int ME_TextEditor ;
typedef TYPE_3__ ME_Paragraph ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 struct undo_item* add_undo (int *,int ) ;
 int undo_set_para_fmt ;

BOOL add_undo_set_para_fmt( ME_TextEditor *editor, const ME_Paragraph *para )
{
    struct undo_item *undo = add_undo( editor, undo_set_para_fmt );
    if (!undo) return FALSE;

    undo->u.set_para_fmt.pos = para->nCharOfs;
    undo->u.set_para_fmt.fmt = para->fmt;
    undo->u.set_para_fmt.border = para->border;

    return TRUE;
}
