
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_6__ {scalar_t__ nActiveChildren; scalar_t__ hwndActiveChild; scalar_t__ hwndChildMaximized; scalar_t__* child; int hBmpClose; } ;
typedef TYPE_1__ MDICLIENTINFO ;
typedef int LRESULT ;
typedef scalar_t__ HWND ;
typedef scalar_t__ BOOL ;


 int DestroyWindow (scalar_t__) ;
 scalar_t__ GetParent (scalar_t__) ;
 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int MDI_ChildActivate (scalar_t__,int ) ;
 scalar_t__ MDI_GetWindow (TYPE_1__*,scalar_t__,int ,int ) ;
 int MDI_PostUpdate (scalar_t__,TYPE_1__*,scalar_t__) ;
 int MDI_RestoreFrameMenu (scalar_t__,scalar_t__,int ) ;
 int MDI_SwitchActiveChild (TYPE_1__*,scalar_t__,int ) ;
 int MDI_UpdateFrameText (scalar_t__,scalar_t__,int ,int *) ;
 scalar_t__ SB_BOTH ;
 int SW_HIDE ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int ShowWindow (scalar_t__,int ) ;
 int TRACE (char*,scalar_t__) ;
 int TRUE ;
 int WM_MDIREFRESHMENU ;
 int memcpy (scalar_t__*,scalar_t__*,size_t) ;

__attribute__((used)) static LRESULT MDIDestroyChild( HWND client, MDICLIENTINFO *ci,
                                HWND child, BOOL flagDestroy )
{
    UINT i;

    TRACE("# of managed children %u\n", ci->nActiveChildren);

    if( child == ci->hwndActiveChild )
    {
        HWND next = MDI_GetWindow(ci, child, TRUE, 0);
        if (next)
            MDI_SwitchActiveChild(ci, next, TRUE);
        else
        {
            ShowWindow(child, SW_HIDE);
            if (child == ci->hwndChildMaximized)
            {
                HWND frame = GetParent(client);
                MDI_RestoreFrameMenu(frame, child, ci->hBmpClose);
                ci->hwndChildMaximized = 0;
                MDI_UpdateFrameText(frame, client, TRUE, ((void*)0));
            }
            if (flagDestroy)
                MDI_ChildActivate(client, 0);
        }
    }

    for (i = 0; i < ci->nActiveChildren; i++)
    {
        if (ci->child[i] == child)
        {
            HWND *new_child = HeapAlloc(GetProcessHeap(), 0, (ci->nActiveChildren - 1) * sizeof(HWND));
            if (new_child != ((void*)0))
            {
                memcpy(new_child, ci->child, i * sizeof(HWND));
                if (i + 1 < ci->nActiveChildren)
                    memcpy(new_child + i, ci->child + i + 1, (ci->nActiveChildren - i - 1) * sizeof(HWND));
                HeapFree(GetProcessHeap(), 0, ci->child);
                ci->child = new_child;
            }
            else
            {
                UINT c;
                for (c = i; c < ci->nActiveChildren - 1; c++)
                {
                    ci->child[c] = ci->child[c+1];
                }
            }

            ci->nActiveChildren--;
            break;
        }
    }

    if (flagDestroy)
    {
        SendMessageW(client, WM_MDIREFRESHMENU, 0, 0);
        MDI_PostUpdate(GetParent(child), ci, SB_BOTH+1);
        DestroyWindow(child);
    }

    TRACE("child destroyed - %p\n", child);
    return 0;
}
