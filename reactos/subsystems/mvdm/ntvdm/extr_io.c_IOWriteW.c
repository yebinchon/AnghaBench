
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef size_t USHORT ;
typedef int UCHAR ;
struct TYPE_4__ {int (* outw_handler ) (size_t,size_t) ;} ;
struct TYPE_5__ {int (* OutW ) (size_t,size_t) ;} ;
struct TYPE_6__ {TYPE_1__ VddIoHandlers; int * hVdd; TYPE_2__ IoHandlers; } ;


 int ASSERT (int) ;
 int HIBYTE (size_t) ;
 int * INVALID_HANDLE_VALUE ;
 int IOWriteB (size_t,int ) ;
 TYPE_3__* IoPortProc ;
 int LOBYTE (size_t) ;
 size_t MAXWORD ;
 int stub1 (size_t,size_t) ;
 int stub2 (size_t,size_t) ;

VOID
IOWriteW(USHORT Port,
         USHORT Buffer)
{
    if (IoPortProc[Port].hVdd == INVALID_HANDLE_VALUE &&
        IoPortProc[Port].IoHandlers.OutW)
    {
        IoPortProc[Port].IoHandlers.OutW(Port, Buffer);
    }
    else if (IoPortProc[Port].hVdd != ((void*)0) && IoPortProc[Port].hVdd != INVALID_HANDLE_VALUE &&
             IoPortProc[Port].VddIoHandlers.outw_handler)
    {
        ASSERT(Port <= MAXWORD);
        IoPortProc[Port].VddIoHandlers.outw_handler(Port, Buffer);
    }
    else
    {

        IOWriteB(Port, LOBYTE(Buffer));
        IOWriteB(Port + sizeof(UCHAR), HIBYTE(Buffer));
    }
}
