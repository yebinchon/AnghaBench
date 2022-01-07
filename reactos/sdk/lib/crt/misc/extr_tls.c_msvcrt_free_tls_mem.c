
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* time_buffer; struct TYPE_4__* wcserror_buffer; struct TYPE_4__* strerror_buffer; struct TYPE_4__* wasctime_buffer; struct TYPE_4__* asctime_buffer; struct TYPE_4__* efcvt_buffer; int handle; } ;
typedef TYPE_1__ thread_data_t ;


 int CloseHandle (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 TYPE_1__* TlsGetValue (int ) ;
 int msvcrt_tls_index ;

void msvcrt_free_tls_mem(void)
{
  thread_data_t *tls = TlsGetValue(msvcrt_tls_index);

  if (tls)
  {
    CloseHandle(tls->handle);
    HeapFree(GetProcessHeap(),0,tls->efcvt_buffer);
    HeapFree(GetProcessHeap(),0,tls->asctime_buffer);
    HeapFree(GetProcessHeap(),0,tls->wasctime_buffer);
    HeapFree(GetProcessHeap(),0,tls->strerror_buffer);
    HeapFree(GetProcessHeap(),0,tls->wcserror_buffer);
    HeapFree(GetProcessHeap(),0,tls->time_buffer);




  }
  HeapFree(GetProcessHeap(), 0, tls);
}
