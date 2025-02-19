
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_9__ {int flags; int style; scalar_t__ hwndListBox; scalar_t__ x_offset; } ;
typedef int * LPWSTR ;
typedef int * LPCWSTR ;
typedef int LPCSTR ;
typedef int INT ;
typedef TYPE_1__ EDITSTATE ;
typedef int BOOL ;


 int CP_ACP ;
 int EDIT_EM_ReplaceSel (TYPE_1__*,int ,int *,int ,int ) ;
 int EDIT_EM_ScrollCaret (TYPE_1__*) ;
 int EDIT_EM_SetSel (TYPE_1__*,int ,int ,int ) ;
 int EDIT_InvalidateUniscribeData (TYPE_1__*) ;
 int EDIT_NOTIFY_PARENT (TYPE_1__*,int ) ;
 int EDIT_UpdateScrollInfo (TYPE_1__*) ;
 int EF_MODIFIED ;
 int EF_UPDATE ;
 int EN_CHANGE ;
 int EN_UPDATE ;
 int ERR (char*) ;
 int ES_MULTILINE ;
 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int TRACE (char*,...) ;
 int debugstr_w (int *) ;
 int * empty_stringW ;

__attribute__((used)) static void EDIT_WM_SetText(EDITSTATE *es, LPCWSTR text, BOOL unicode)
{
    LPWSTR textW = ((void*)0);
    if (!unicode && text)
    {
 LPCSTR textA = (LPCSTR)text;
 INT countW = MultiByteToWideChar(CP_ACP, 0, textA, -1, ((void*)0), 0);
        textW = HeapAlloc(GetProcessHeap(), 0, countW * sizeof(WCHAR));
 if (textW)
     MultiByteToWideChar(CP_ACP, 0, textA, -1, textW, countW);
 text = textW;
    }

    if (es->flags & EF_UPDATE)

 ERR("SetSel may generate UPDATE message whose handler may reset "
     "selection.\n");

    EDIT_EM_SetSel(es, 0, (UINT)-1, FALSE);
    if (text)
    {
 TRACE("%s\n", debugstr_w(text));
 EDIT_EM_ReplaceSel(es, FALSE, text, FALSE, FALSE);
 if(!unicode)
     HeapFree(GetProcessHeap(), 0, textW);
    }
    else
    {
 TRACE("<NULL>\n");
 EDIT_EM_ReplaceSel(es, FALSE, empty_stringW, FALSE, FALSE);
    }
    es->x_offset = 0;
    es->flags &= ~EF_MODIFIED;
    EDIT_EM_SetSel(es, 0, 0, FALSE);





    if( !((es->style & ES_MULTILINE) || es->hwndListBox))
    {
        EDIT_NOTIFY_PARENT(es, EN_UPDATE);
        EDIT_NOTIFY_PARENT(es, EN_CHANGE);
    }
    EDIT_EM_ScrollCaret(es);
    EDIT_UpdateScrollInfo(es);
    EDIT_InvalidateUniscribeData(es);
}
