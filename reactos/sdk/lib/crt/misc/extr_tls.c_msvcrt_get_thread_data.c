
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int random_seed; int mbcinfo; int locinfo; int handle; int tid; } ;
typedef TYPE_1__ thread_data_t ;
struct TYPE_8__ {int mbcinfo; int locinfo; } ;
typedef int DWORD ;


 int GetCurrentThreadId () ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int INVALID_HANDLE_VALUE ;
 TYPE_5__* MSVCRT_locale ;
 int SetLastError (int ) ;
 TYPE_1__* TlsGetValue (int ) ;
 int TlsSetValue (int ,TYPE_1__*) ;
 int _RT_THREAD ;
 int _amsg_exit (int ) ;
 int msvcrt_tls_index ;

thread_data_t *msvcrt_get_thread_data(void)
{
    thread_data_t *ptr;
    DWORD err = GetLastError();

    if (!(ptr = TlsGetValue( msvcrt_tls_index )))
    {
        if (!(ptr = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*ptr) )))
            _amsg_exit( _RT_THREAD );
        if (!TlsSetValue( msvcrt_tls_index, ptr )) _amsg_exit( _RT_THREAD );
        ptr->tid = GetCurrentThreadId();
        ptr->handle = INVALID_HANDLE_VALUE;
        ptr->random_seed = 1;
        ptr->locinfo = MSVCRT_locale->locinfo;
        ptr->mbcinfo = MSVCRT_locale->mbcinfo;
    }
    SetLastError( err );
    return ptr;
}
