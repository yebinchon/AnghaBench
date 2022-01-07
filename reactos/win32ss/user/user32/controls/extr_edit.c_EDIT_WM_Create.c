
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ selection_end; scalar_t__ selection_start; int hwndSelf; } ;
typedef int RECT ;
typedef int LRESULT ;
typedef scalar_t__* LPCWSTR ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_EM_EmptyUndoBuffer (TYPE_1__*) ;
 int EDIT_EM_ReplaceSel (TYPE_1__*,int ,scalar_t__*,int ,int ) ;
 int EDIT_EM_ScrollCaret (TYPE_1__*) ;
 int EDIT_SetRectNP (TYPE_1__*,int *) ;
 int EDIT_UpdateScrollInfo (TYPE_1__*) ;
 int EDIT_WM_SetFont (TYPE_1__*,int ,int ) ;
 int FALSE ;
 int GetClientRect (int ,int *) ;
 int TRACE (char*,int ) ;
 int debugstr_w (scalar_t__*) ;

__attribute__((used)) static LRESULT EDIT_WM_Create(EDITSTATE *es, LPCWSTR name)
{
        RECT clientRect;

 TRACE("%s\n", debugstr_w(name));






        EDIT_WM_SetFont(es, 0, FALSE);
        EDIT_EM_EmptyUndoBuffer(es);



        GetClientRect(es->hwndSelf, &clientRect);
        EDIT_SetRectNP(es, &clientRect);

       if (name && *name) {
    EDIT_EM_ReplaceSel(es, FALSE, name, FALSE, FALSE);





    es->selection_start = es->selection_end = 0;






    EDIT_EM_ScrollCaret(es);
       }

       EDIT_UpdateScrollInfo(es);




       return 1;
}
