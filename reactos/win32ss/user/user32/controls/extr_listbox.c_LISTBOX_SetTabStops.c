
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int style; size_t nb_tabs; int avg_char_width; int * tabs; } ;
typedef int LPINT ;
typedef TYPE_1__ LB_DESCR ;
typedef size_t INT ;
typedef int BOOL ;


 int ERROR_LB_WITHOUT_TABSTOPS ;
 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int LBS_USETABSTOPS ;
 int MulDiv (int ,int ,int) ;
 int SetLastError (int ) ;
 int TRUE ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static BOOL LISTBOX_SetTabStops( LB_DESCR *descr, INT count, LPINT tabs )
{
    INT i;

    if (!(descr->style & LBS_USETABSTOPS))
    {
        SetLastError(ERROR_LB_WITHOUT_TABSTOPS);
        return FALSE;
    }

    HeapFree( GetProcessHeap(), 0, descr->tabs );
    if (!(descr->nb_tabs = count))
    {
        descr->tabs = ((void*)0);
        return TRUE;
    }
    if (!(descr->tabs = HeapAlloc( GetProcessHeap(), 0,
                                            descr->nb_tabs * sizeof(INT) )))
        return FALSE;
    memcpy( descr->tabs, tabs, descr->nb_tabs * sizeof(INT) );


    for (i = 0; i < descr->nb_tabs; i++)
        descr->tabs[i] = MulDiv(descr->tabs[i], descr->avg_char_width, 4);

    return TRUE;
}
