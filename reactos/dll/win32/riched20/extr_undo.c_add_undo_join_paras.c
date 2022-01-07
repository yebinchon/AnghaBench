
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; } ;
struct TYPE_4__ {TYPE_1__ join_paras; } ;
struct undo_item {TYPE_2__ u; } ;
typedef int ME_TextEditor ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 struct undo_item* add_undo (int *,int ) ;
 int undo_join_paras ;

BOOL add_undo_join_paras( ME_TextEditor *editor, int pos )
{
    struct undo_item *undo = add_undo( editor, undo_join_paras );
    if (!undo) return FALSE;

    undo->u.join_paras.pos = pos;
    return TRUE;
}
