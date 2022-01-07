
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; int len; int flags; int * style; scalar_t__* str; } ;
struct TYPE_4__ {TYPE_1__ insert_run; } ;
struct undo_item {TYPE_2__ u; } ;
typedef int WCHAR ;
typedef int ME_TextEditor ;
typedef int ME_Style ;
typedef int BOOL ;


 int FALSE ;
 int ME_AddRefStyle (int *) ;
 int ME_EmptyUndoStack (int *) ;
 int TRUE ;
 struct undo_item* add_undo (int *,int ) ;
 scalar_t__* heap_alloc (int) ;
 int memcpy (scalar_t__*,int const*,int) ;
 int undo_insert_run ;

BOOL add_undo_insert_run( ME_TextEditor *editor, int pos, const WCHAR *str, int len, int flags, ME_Style *style )
{
    struct undo_item *undo = add_undo( editor, undo_insert_run );
    if (!undo) return FALSE;

    undo->u.insert_run.str = heap_alloc( (len + 1) * sizeof(WCHAR) );
    if (!undo->u.insert_run.str)
    {
        ME_EmptyUndoStack( editor );
        return FALSE;
    }
    memcpy( undo->u.insert_run.str, str, len * sizeof(WCHAR) );
    undo->u.insert_run.str[len] = 0;
    undo->u.insert_run.pos = pos;
    undo->u.insert_run.len = len;
    undo->u.insert_run.flags = flags;
    undo->u.insert_run.style = style;
    ME_AddRefStyle( style );
    return TRUE;
}
