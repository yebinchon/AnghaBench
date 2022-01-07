
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vlc_thread_t ;
struct TYPE_4__ {int id; void* data; } ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 int INFINITE ;
 int TRUE ;
 scalar_t__ WAIT_ABANDONED_0 ;
 scalar_t__ WAIT_FAILED ;
 scalar_t__ WAIT_IO_COMPLETION ;
 scalar_t__ WaitForSingleObjectEx (int ,int ,int ) ;
 int assert (int) ;
 int vlc_testcancel () ;
 int vlc_thread_destroy (TYPE_1__*) ;

void vlc_join (vlc_thread_t th, void **result)
{
    DWORD ret;

    do
    {
        vlc_testcancel ();
        ret = WaitForSingleObjectEx(th->id, INFINITE, TRUE);
        assert(ret != WAIT_ABANDONED_0);
    }
    while (ret == WAIT_IO_COMPLETION || ret == WAIT_FAILED);

    if (result != ((void*)0))
        *result = th->data;
    CloseHandle (th->id);
    vlc_thread_destroy(th);
}
