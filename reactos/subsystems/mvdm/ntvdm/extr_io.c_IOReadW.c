
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t USHORT ;
typedef int UCHAR ;
struct TYPE_4__ {int (* inw_handler ) (size_t,size_t*) ;} ;
struct TYPE_5__ {size_t (* InW ) (size_t) ;} ;
struct TYPE_6__ {TYPE_1__ VddIoHandlers; int * hVdd; TYPE_2__ IoHandlers; } ;


 int ASSERT (int) ;
 int * INVALID_HANDLE_VALUE ;
 int IOReadB (size_t) ;
 TYPE_3__* IoPortProc ;
 size_t MAKEWORD (int ,int ) ;
 size_t MAXWORD ;
 size_t stub1 (size_t) ;
 int stub2 (size_t,size_t*) ;

USHORT
IOReadW(USHORT Port)
{
    if (IoPortProc[Port].hVdd == INVALID_HANDLE_VALUE &&
        IoPortProc[Port].IoHandlers.InW)
    {
        return IoPortProc[Port].IoHandlers.InW(Port);
    }
    else if (IoPortProc[Port].hVdd != ((void*)0) && IoPortProc[Port].hVdd != INVALID_HANDLE_VALUE &&
             IoPortProc[Port].VddIoHandlers.inw_handler)
    {
        USHORT Data;
        ASSERT(Port <= MAXWORD);
        IoPortProc[Port].VddIoHandlers.inw_handler(Port, &Data);
        return Data;
    }
    else
    {
        UCHAR Low, High;


        Low = IOReadB(Port);
        High = IOReadB(Port + sizeof(UCHAR));
        return MAKEWORD(Low, High);
    }
}
