
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_9__ {TYPE_1__* pRun; } ;
struct TYPE_8__ {int bCaretAtEnd; TYPE_3__* pCursors; } ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_2__ ME_TextEditor ;
typedef int ME_Style ;
typedef int ME_DisplayItem ;
typedef TYPE_3__ ME_Cursor ;


 int FALSE ;
 int * ME_InsertRunAtCursor (TYPE_2__*,TYPE_3__*,int *,int const*,int,int) ;
 int assert (int) ;
 scalar_t__ diRun ;

__attribute__((used)) static ME_DisplayItem *
ME_InternalInsertTextFromCursor(ME_TextEditor *editor, int nCursor,
                                const WCHAR *str, int len, ME_Style *style,
                                int flags)
{
  ME_Cursor *p = &editor->pCursors[nCursor];

  editor->bCaretAtEnd = FALSE;

  assert(p->pRun->type == diRun);

  return ME_InsertRunAtCursor(editor, p, style, str, len, flags);
}
