
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ device_type; scalar_t__ device_id; struct TYPE_4__* next; } ;
typedef TYPE_1__ SessionInfo ;
typedef scalar_t__ DeviceType ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__* session_list ;
 int session_lock ;

SessionInfo*
GetSession(
    DeviceType device_type,
    UINT device_id)
{
    SessionInfo* session_info;

    EnterCriticalSection(&session_lock);
    session_info = session_list;

    while ( session_info )
    {
        if ( ( session_info->device_type == device_type ) &&
             ( session_info->device_id == device_id ) )
        {
            LeaveCriticalSection(&session_lock);
            return session_info;
        }

        session_info = session_info->next;
    }

    LeaveCriticalSection(&session_lock);
    return ((void*)0);
}
