
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int entry; } ;
typedef TYPE_1__ tls_data_t ;
typedef int LONG ;
typedef scalar_t__ DWORD ;


 int EnterCriticalSection (int *) ;
 scalar_t__ InterlockedCompareExchange (int *,scalar_t__,scalar_t__) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ TLS_OUT_OF_INDEXES ;
 scalar_t__ TlsAlloc () ;
 int TlsFree (scalar_t__) ;
 TYPE_1__* TlsGetValue (scalar_t__) ;
 int TlsSetValue (scalar_t__,TYPE_1__*) ;
 TYPE_1__* heap_alloc_zero (int) ;
 int list_add_tail (int *,int *) ;
 int tls_cs ;
 int tls_list ;
 scalar_t__ urlmon_tls ;

tls_data_t *get_tls_data(void)
{
    tls_data_t *data;

    if(urlmon_tls == TLS_OUT_OF_INDEXES) {
        DWORD tls = TlsAlloc();
        if(tls == TLS_OUT_OF_INDEXES)
            return ((void*)0);

        tls = InterlockedCompareExchange((LONG*)&urlmon_tls, tls, TLS_OUT_OF_INDEXES);
        if(tls != urlmon_tls)
            TlsFree(tls);
    }

    data = TlsGetValue(urlmon_tls);
    if(!data) {
        data = heap_alloc_zero(sizeof(tls_data_t));
        if(!data)
            return ((void*)0);

        EnterCriticalSection(&tls_cs);
        list_add_tail(&tls_list, &data->entry);
        LeaveCriticalSection(&tls_cs);

        TlsSetValue(urlmon_tls, data);
    }

    return data;
}
