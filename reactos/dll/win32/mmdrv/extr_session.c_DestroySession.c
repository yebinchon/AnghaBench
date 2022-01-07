
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ SessionInfo ;
typedef int HANDLE ;


 int EnterCriticalSection (int *) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__* session_list ;
 int session_lock ;

VOID
DestroySession(SessionInfo* session)
{
    HANDLE heap = GetProcessHeap();
    SessionInfo* session_node;
    SessionInfo* session_prev;





    EnterCriticalSection(&session_lock);

    session_node = session_list;
    session_prev = ((void*)0);

    while ( session_node )
    {
        if ( session_node == session )
        {

            session_prev->next = session->next;
            break;
        }


        session_prev = session_node;
        session_node = session_node->next;
    }

    LeaveCriticalSection(&session_lock);

    HeapFree(heap, 0, session);
}
