
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; int len; } ;
struct TYPE_4__ {TYPE_1__ delete_run; } ;
struct undo_item {TYPE_2__ u; } ;
typedef int ME_TextEditor ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 struct undo_item* add_undo (int *,int ) ;
 int undo_delete_run ;

BOOL add_undo_delete_run( ME_TextEditor *editor, int pos, int len )
{
    struct undo_item *undo = add_undo( editor, undo_delete_run );
    if (!undo) return FALSE;

    undo->u.delete_run.pos = pos;
    undo->u.delete_run.len = len;

    return TRUE;
}
