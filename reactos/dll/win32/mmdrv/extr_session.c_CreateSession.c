
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {struct TYPE_6__* next; int device_id; int device_type; } ;
typedef TYPE_1__ SessionInfo ;
typedef int MMRESULT ;
typedef int HANDLE ;
typedef int DeviceType ;


 int ASSERT (TYPE_1__**) ;
 int DPRINT (char*) ;
 int EnterCriticalSection (int *) ;
 int GetProcessHeap () ;
 scalar_t__ GetSession (int ,int ) ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int LeaveCriticalSection (int *) ;
 int MMSYSERR_ALLOCATED ;
 int MMSYSERR_NOERROR ;
 int MMSYSERR_NOMEM ;
 TYPE_1__* session_list ;
 int session_lock ;

MMRESULT
CreateSession(
    DeviceType device_type,
    UINT device_id,
    SessionInfo** session_info)
{
    HANDLE heap = GetProcessHeap();

    ASSERT(session_info);

    EnterCriticalSection(&session_lock);



    if ( GetSession(device_type, device_id) )
    {
        DPRINT("Already allocated session\n");
        LeaveCriticalSection(&session_lock);
        return MMSYSERR_ALLOCATED;
    }

    *session_info = HeapAlloc(heap, HEAP_ZERO_MEMORY, sizeof(SessionInfo));

    if ( ! *session_info )
    {
        DPRINT("Failed to allocate mem for session info\n");
        LeaveCriticalSection(&session_lock);
        return MMSYSERR_NOMEM;
    }

    (*session_info)->device_type = device_type;
    (*session_info)->device_id = device_id;



    (*session_info)->next = session_list;
    session_list = *session_info;

    LeaveCriticalSection(&session_lock);

    return MMSYSERR_NOERROR;
}
