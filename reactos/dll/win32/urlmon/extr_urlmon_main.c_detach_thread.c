
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ notif_hwnd; int entry; } ;
typedef TYPE_1__ tls_data_t ;


 int DestroyWindow (scalar_t__) ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ TLS_OUT_OF_INDEXES ;
 TYPE_1__* TlsGetValue (scalar_t__) ;
 int WARN (char*) ;
 int heap_free (TYPE_1__*) ;
 int list_remove (int *) ;
 int tls_cs ;
 scalar_t__ urlmon_tls ;

__attribute__((used)) static void detach_thread(void)
{
    tls_data_t *data;

    if(urlmon_tls == TLS_OUT_OF_INDEXES)
        return;

    data = TlsGetValue(urlmon_tls);
    if(!data)
        return;

    EnterCriticalSection(&tls_cs);
    list_remove(&data->entry);
    LeaveCriticalSection(&tls_cs);

    if(data->notif_hwnd) {
        WARN("notif_hwnd not destroyed\n");
        DestroyWindow(data->notif_hwnd);
    }

    heap_free(data);
}
