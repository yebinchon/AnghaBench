
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t USHORT ;
typedef int ULONG ;
struct TYPE_3__ {int (* OutD ) (size_t,int ) ;} ;
struct TYPE_4__ {scalar_t__ hVdd; TYPE_1__ IoHandlers; } ;


 int HIWORD (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IOWriteW (size_t,int ) ;
 TYPE_2__* IoPortProc ;
 int LOWORD (int ) ;
 int stub1 (size_t,int ) ;

VOID
IOWriteD(USHORT Port,
         ULONG Buffer)
{
    if (IoPortProc[Port].hVdd == INVALID_HANDLE_VALUE &&
        IoPortProc[Port].IoHandlers.OutD)
    {
        IoPortProc[Port].IoHandlers.OutD(Port, Buffer);
    }
    else
    {

        IOWriteW(Port, LOWORD(Buffer));
        IOWriteW(Port + sizeof(USHORT), HIWORD(Buffer));
    }
}
