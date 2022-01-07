
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {struct TYPE_5__* Next; TYPE_1__* MainWnd; int pBits; int pbmi; int hDCMem; } ;
struct TYPE_4__ {TYPE_2__* ImageEditors; } ;
typedef TYPE_2__* PEDIT_WND_INFO ;


 int DeleteDC (int ) ;
 int HeapFree (int ,int ,int ) ;
 int ProcessHeap ;

__attribute__((used)) static VOID
DestroyEditWnd(PEDIT_WND_INFO Info)
{
    PEDIT_WND_INFO *PrevEditor;
    PEDIT_WND_INFO Editor;

    DeleteDC(Info->hDCMem);


    HeapFree(ProcessHeap,
             0,
             Info->pbmi);
    HeapFree(ProcessHeap,
             0,
             Info->pBits);


    PrevEditor = &Info->MainWnd->ImageEditors;
    Editor = Info->MainWnd->ImageEditors;
    do
    {
        if (Editor == Info)
        {
            *PrevEditor = Info->Next;
            break;
        }
        PrevEditor = &Editor->Next;
        Editor = Editor->Next;
    } while (Editor != ((void*)0));
}
