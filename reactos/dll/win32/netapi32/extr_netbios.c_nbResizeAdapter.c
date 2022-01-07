
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_3__ {int sessionsLen; int * sessions; } ;
typedef int NetBIOSSession ;
typedef TYPE_1__ NetBIOSAdapter ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,int) ;
 int * HeapReAlloc (int ,int ,int *,int) ;
 int NRC_GOODRET ;
 int NRC_OSRESNOTAV ;

__attribute__((used)) static UCHAR nbResizeAdapter(NetBIOSAdapter *adapter, UCHAR sessionsLen)
{
    UCHAR ret = NRC_GOODRET;

    if (adapter && adapter->sessionsLen < sessionsLen)
    {
        NetBIOSSession *newSessions;

        if (adapter->sessions)
            newSessions = HeapReAlloc(GetProcessHeap(),
             HEAP_ZERO_MEMORY, adapter->sessions, sessionsLen *
             sizeof(NetBIOSSession));
        else
            newSessions = HeapAlloc(GetProcessHeap(),
             HEAP_ZERO_MEMORY, sessionsLen * sizeof(NetBIOSSession));
        if (newSessions)
        {
            adapter->sessions = newSessions;
            adapter->sessionsLen = sessionsLen;
        }
        else
            ret = NRC_OSRESNOTAV;
    }
    return ret;
}
