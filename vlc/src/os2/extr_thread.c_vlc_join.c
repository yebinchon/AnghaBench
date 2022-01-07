
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vlc_thread_t ;
typedef scalar_t__ ULONG ;
struct TYPE_4__ {int cancel_sock; int done_event; int cancel_event; void* data; } ;


 int DosCloseEventSem (int ) ;
 scalar_t__ ERROR_INTERRUPT ;
 int SEM_INDEFINITE_WAIT ;
 int free (TYPE_1__*) ;
 int soclose (int ) ;
 scalar_t__ vlc_WaitForSingleObject (int ,int ) ;
 int vlc_testcancel () ;

void vlc_join (vlc_thread_t th, void **result)
{
    ULONG rc;

    do
    {
        vlc_testcancel();
        rc = vlc_WaitForSingleObject( th->done_event, SEM_INDEFINITE_WAIT );
    } while( rc == ERROR_INTERRUPT );

    if (result != ((void*)0))
        *result = th->data;

    DosCloseEventSem( th->cancel_event );
    DosCloseEventSem( th->done_event );

    soclose( th->cancel_sock );

    free( th );
}
