
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t USHORT ;
struct TYPE_3__ {int * OutB; int * InB; } ;
struct TYPE_4__ {int hVdd; TYPE_1__ IoHandlers; } ;
typedef int * EMULATOR_OUTB_PROC ;
typedef int * EMULATOR_INB_PROC ;


 int DPRINT1 (char*,size_t) ;
 int INVALID_HANDLE_VALUE ;
 TYPE_2__* IoPortProc ;

VOID RegisterIoPort(USHORT Port,
                    EMULATOR_INB_PROC InHandler,
                    EMULATOR_OUTB_PROC OutHandler)
{
    if (IoPortProc[Port].IoHandlers.InB == ((void*)0))
        IoPortProc[Port].IoHandlers.InB = InHandler;
    else
        DPRINT1("IoPortProc[0x%X].IoHandlers.InB already registered\n", Port);

    if (IoPortProc[Port].IoHandlers.OutB == ((void*)0))
        IoPortProc[Port].IoHandlers.OutB = OutHandler;
    else
        DPRINT1("IoPortProc[0x%X].IoHandlers.OutB already registered\n", Port);


    IoPortProc[Port].hVdd = INVALID_HANDLE_VALUE;
}
