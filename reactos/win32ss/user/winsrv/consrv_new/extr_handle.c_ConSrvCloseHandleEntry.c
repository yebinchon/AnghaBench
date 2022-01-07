
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_14__ {int ReadWaitQueue; } ;
struct TYPE_13__ {TYPE_3__* Object; } ;
struct TYPE_12__ {scalar_t__ Type; } ;
struct TYPE_10__ {scalar_t__ Flink; scalar_t__ Blink; } ;
struct TYPE_11__ {TYPE_1__ ListEntry; } ;
typedef int PVOID ;
typedef TYPE_2__* PCONSOLE_SCREEN_BUFFER ;
typedef TYPE_3__* PCONSOLE_IO_OBJECT ;
typedef TYPE_4__* PCONSOLE_IO_HANDLE ;
typedef TYPE_5__* PCONSOLE_INPUT_BUFFER ;


 scalar_t__ AdjustHandleCounts (TYPE_4__*,int) ;
 int ConioDeleteScreenBuffer (TYPE_2__*) ;
 int CsrDereferenceWait (int *) ;
 int CsrNotifyWait (int *,int ,int *,int ) ;
 int DPRINT (char*) ;
 int DPRINT1 (char*,scalar_t__) ;
 scalar_t__ GRAPHICS_BUFFER ;
 scalar_t__ INPUT_BUFFER ;
 int IsListEmpty (int *) ;
 int RtlZeroMemory (TYPE_4__*,int) ;
 scalar_t__ TEXTMODE_BUFFER ;
 int WaitAll ;

__attribute__((used)) static VOID
ConSrvCloseHandleEntry(PCONSOLE_IO_HANDLE Entry)
{
    PCONSOLE_IO_OBJECT Object = Entry->Object;
    if (Object != ((void*)0))
    {







        if (Object->Type == INPUT_BUFFER)
        {
            PCONSOLE_INPUT_BUFFER InputBuffer = (PCONSOLE_INPUT_BUFFER)Object;
            CsrNotifyWait(&InputBuffer->ReadWaitQueue,
                          WaitAll,
                          ((void*)0),
                          (PVOID)Entry);
            if (!IsListEmpty(&InputBuffer->ReadWaitQueue))
            {
                CsrDereferenceWait(&InputBuffer->ReadWaitQueue);
            }
        }


        if (AdjustHandleCounts(Entry, -1) == 0)
        {
            if (Object->Type == TEXTMODE_BUFFER || Object->Type == GRAPHICS_BUFFER)
            {
                PCONSOLE_SCREEN_BUFFER Buffer = (PCONSOLE_SCREEN_BUFFER)Object;



                if (Buffer->ListEntry.Flink != Buffer->ListEntry.Blink)
                    ConioDeleteScreenBuffer(Buffer);
            }
            else if (Object->Type == INPUT_BUFFER)
            {
                DPRINT("Closing the input buffer\n");
            }
            else
            {
                DPRINT1("Invalid object type %d\n", Object->Type);
            }
        }






    }
    RtlZeroMemory(Entry, sizeof(*Entry));
}
