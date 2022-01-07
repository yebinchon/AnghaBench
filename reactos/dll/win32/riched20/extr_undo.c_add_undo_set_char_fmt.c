
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; int len; int fmt; } ;
struct TYPE_4__ {TYPE_1__ set_char_fmt; } ;
struct undo_item {TYPE_2__ u; } ;
typedef int ME_TextEditor ;
typedef int CHARFORMAT2W ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 struct undo_item* add_undo (int *,int ) ;
 int undo_set_char_fmt ;

BOOL add_undo_set_char_fmt( ME_TextEditor *editor, int pos, int len, const CHARFORMAT2W *fmt )
{
    struct undo_item *undo = add_undo( editor, undo_set_char_fmt );
    if (!undo) return FALSE;

    undo->u.set_char_fmt.pos = pos;
    undo->u.set_char_fmt.len = len;
    undo->u.set_char_fmt.fmt = *fmt;

    return TRUE;
}
