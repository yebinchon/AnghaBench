
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_8__ {int style; int * undo_text; scalar_t__ undo_insert_count; scalar_t__ undo_position; } ;
typedef int * LPWSTR ;
typedef int INT ;
typedef TYPE_1__ EDITSTATE ;
typedef int BOOL ;


 int EDIT_EM_EmptyUndoBuffer (TYPE_1__*) ;
 int EDIT_EM_ReplaceSel (TYPE_1__*,int,int *,int,int) ;
 int EDIT_EM_ScrollCaret (TYPE_1__*) ;
 int EDIT_EM_SetSel (TYPE_1__*,scalar_t__,scalar_t__,int) ;
 int EDIT_NOTIFY_PARENT (TYPE_1__*,int ) ;
 int EN_CHANGE ;
 int ES_MULTILINE ;
 int ES_READONLY ;
 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int TRACE (char*,scalar_t__,int ) ;
 int TRUE ;
 int debugstr_w (int *) ;
 int strcpyW (int *,int *) ;
 int strlenW (int *) ;

__attribute__((used)) static BOOL EDIT_EM_Undo(EDITSTATE *es)
{
 INT ulength;
 LPWSTR utext;



 if( es->style & ES_READONLY )
            return !(es->style & ES_MULTILINE);

 ulength = strlenW(es->undo_text);

 utext = HeapAlloc(GetProcessHeap(), 0, (ulength + 1) * sizeof(WCHAR));






 strcpyW(utext, es->undo_text);

 TRACE("before UNDO:insertion length = %d, deletion buffer = %s\n",
       es->undo_insert_count, debugstr_w(utext));

 EDIT_EM_SetSel(es, es->undo_position, es->undo_position + es->undo_insert_count, FALSE);
 EDIT_EM_EmptyUndoBuffer(es);
 EDIT_EM_ReplaceSel(es, TRUE, utext, TRUE, TRUE);
 EDIT_EM_SetSel(es, es->undo_position, es->undo_position + es->undo_insert_count, FALSE);

        EDIT_NOTIFY_PARENT(es, EN_CHANGE);
 EDIT_EM_ScrollCaret(es);
 HeapFree(GetProcessHeap(), 0, utext);

 TRACE("after UNDO:insertion length = %d, deletion buffer = %s\n",
   es->undo_insert_count, debugstr_w(es->undo_text));
 return TRUE;
}
