
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_8__ {TYPE_1__* DebugInfo; } ;
struct TYPE_7__ {TYPE_5__ cs; scalar_t__ bytesPending; int fd; } ;
struct TYPE_6__ {scalar_t__* Spare; } ;
typedef TYPE_2__ NetBTSession ;


 int DeleteCriticalSection (TYPE_5__*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int INVALID_SOCKET ;
 int NRC_GOODRET ;
 int NRC_SNUMOUT ;
 int TRACE (char*,void*,TYPE_2__*) ;
 int closesocket (int ) ;

__attribute__((used)) static UCHAR NetBTHangup(void *adapt, void *sess)
{
    NetBTSession *session = sess;

    TRACE("adapt %p, session %p\n", adapt, session);

    if (!session) return NRC_SNUMOUT;




    closesocket(session->fd);
    session->fd = INVALID_SOCKET;
    session->bytesPending = 0;
    session->cs.DebugInfo->Spare[0] = 0;
    DeleteCriticalSection(&session->cs);
    HeapFree(GetProcessHeap(), 0, session);

    return NRC_GOODRET;
}
