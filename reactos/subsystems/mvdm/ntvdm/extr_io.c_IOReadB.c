
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t USHORT ;
typedef int UCHAR ;
struct TYPE_4__ {int (* inb_handler ) (size_t,int*) ;} ;
struct TYPE_5__ {int (* InB ) (size_t) ;} ;
struct TYPE_6__ {TYPE_1__ VddIoHandlers; int * hVdd; TYPE_2__ IoHandlers; } ;


 int ASSERT (int) ;
 int DPRINT (char*,size_t) ;
 int * INVALID_HANDLE_VALUE ;
 TYPE_3__* IoPortProc ;
 size_t MAXWORD ;
 int stub1 (size_t) ;
 int stub2 (size_t,int*) ;

UCHAR
IOReadB(USHORT Port)
{
    if (IoPortProc[Port].hVdd == INVALID_HANDLE_VALUE &&
        IoPortProc[Port].IoHandlers.InB)
    {
        return IoPortProc[Port].IoHandlers.InB(Port);
    }
    else if (IoPortProc[Port].hVdd != ((void*)0) && IoPortProc[Port].hVdd != INVALID_HANDLE_VALUE &&
             IoPortProc[Port].VddIoHandlers.inb_handler)
    {
        UCHAR Data;
        ASSERT(Port <= MAXWORD);
        IoPortProc[Port].VddIoHandlers.inb_handler(Port, &Data);
        return Data;
    }
    else
    {

        DPRINT("Read from unknown port: 0x%X\n", Port);
        return 0xFF;
    }
}
