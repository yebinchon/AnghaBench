
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_thread {scalar_t__ cancel_sock; } ;
struct timeval {int dummy; } ;
typedef int fd_set ;


 int FD_SET (scalar_t__,int *) ;
 int MAX (int,scalar_t__) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int vlc_testcancel () ;
 struct vlc_thread* vlc_thread_self () ;

__attribute__((used)) static int vlc_select( int nfds, fd_set *rdset, fd_set *wrset, fd_set *exset,
                       struct timeval *timeout )
{
    struct vlc_thread *th = vlc_thread_self( );

    int rc;

    if( th )
    {
        FD_SET( th->cancel_sock, rdset );

        nfds = MAX( nfds, th->cancel_sock + 1 );
    }

    rc = select( nfds, rdset, wrset, exset, timeout );

    vlc_testcancel();

    return rc;

}
