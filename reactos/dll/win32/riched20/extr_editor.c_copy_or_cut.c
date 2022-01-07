
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int styleFlags; int * pCursors; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int ME_Cursor ;
typedef scalar_t__ BOOL ;


 int ES_READONLY ;
 scalar_t__ FALSE ;
 int MB_ICONERROR ;
 int ME_CommitUndo (TYPE_1__*) ;
 scalar_t__ ME_Copy (TYPE_1__*,int *,int) ;
 int ME_GetSelectionOfs (TYPE_1__*,int*,int*) ;
 int ME_InternalDeleteText (TYPE_1__*,int *,int,scalar_t__) ;
 int ME_UpdateRepaint (TYPE_1__*,int ) ;
 int MessageBeep (int ) ;
 int TRUE ;

__attribute__((used)) static BOOL copy_or_cut(ME_TextEditor *editor, BOOL cut)
{
    BOOL result;
    int offs, num_chars;
    int start_cursor = ME_GetSelectionOfs(editor, &offs, &num_chars);
    ME_Cursor *sel_start = &editor->pCursors[start_cursor];

    if (cut && (editor->styleFlags & ES_READONLY))
    {
        MessageBeep(MB_ICONERROR);
        return FALSE;
    }

    num_chars -= offs;
    result = ME_Copy(editor, sel_start, num_chars);
    if (result && cut)
    {
        ME_InternalDeleteText(editor, sel_start, num_chars, FALSE);
        ME_CommitUndo(editor);
        ME_UpdateRepaint(editor, TRUE);
    }
    return result;
}
