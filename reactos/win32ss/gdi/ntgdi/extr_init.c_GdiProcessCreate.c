
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* Peb; } ;
struct TYPE_10__ {struct TYPE_10__* pPoolRgnAttr; struct TYPE_10__* pPoolBrushAttr; struct TYPE_10__* pPoolDcAttr; int GDIDcAttrFreeList; int GDIBrushAttrFreeList; int PrivateFontListLock; scalar_t__ PrivateMemFontHandleCount; int PrivateMemFontListHead; int PrivateFontListHead; } ;
struct TYPE_9__ {int GdiDCAttributeList; int GdiSharedHandleTable; } ;
typedef int RGN_ATTR ;
typedef TYPE_2__* PPROCESSINFO ;
typedef TYPE_3__* PEPROCESS ;
typedef int NTSTATUS ;
typedef int DC_ATTR ;
typedef int BRUSH_ATTR ;


 int ASSERT (TYPE_2__*) ;
 int ExInitializeFastMutex (int *) ;
 int GDI_BATCH_LIMIT ;
 int GDI_MapHandleTable (TYPE_3__*) ;
 void* GdiPoolCreate (int,char) ;
 int InitializeListHead (int *) ;
 TYPE_2__* PsGetProcessWin32Process (TYPE_3__*) ;
 int STATUS_SUCCESS ;

NTSTATUS
GdiProcessCreate(PEPROCESS Process)
{
    PPROCESSINFO ppiCurrent = PsGetProcessWin32Process(Process);
    ASSERT(ppiCurrent);

    InitializeListHead(&ppiCurrent->PrivateFontListHead);
    InitializeListHead(&ppiCurrent->PrivateMemFontListHead);
    ppiCurrent->PrivateMemFontHandleCount = 0;
    ExInitializeFastMutex(&ppiCurrent->PrivateFontListLock);

    InitializeListHead(&ppiCurrent->GDIBrushAttrFreeList);
    InitializeListHead(&ppiCurrent->GDIDcAttrFreeList);


    Process->Peb->GdiSharedHandleTable = GDI_MapHandleTable(Process);
    Process->Peb->GdiDCAttributeList = GDI_BATCH_LIMIT;


    ppiCurrent->pPoolDcAttr = GdiPoolCreate(sizeof(DC_ATTR), 'acdG');
    ppiCurrent->pPoolBrushAttr = GdiPoolCreate(sizeof(BRUSH_ATTR), 'arbG');
    ppiCurrent->pPoolRgnAttr = GdiPoolCreate(sizeof(RGN_ATTR), 'agrG');
    ASSERT(ppiCurrent->pPoolDcAttr);
    ASSERT(ppiCurrent->pPoolBrushAttr);
    ASSERT(ppiCurrent->pPoolRgnAttr);

    return STATUS_SUCCESS;
}
