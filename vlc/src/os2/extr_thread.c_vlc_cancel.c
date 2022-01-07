
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vlc_thread_t ;
struct TYPE_3__ {int cancel_sock; int cancel_event; } ;


 int DosPostEventSem (int ) ;
 int so_cancel (int ) ;

void vlc_cancel (vlc_thread_t thread_id)
{
    DosPostEventSem( thread_id->cancel_event );
    so_cancel( thread_id->cancel_sock );
}
