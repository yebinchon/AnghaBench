#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vlc_thread {scalar_t__ cancel_sock; } ;
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,scalar_t__) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct vlc_thread* FUNC4 () ; 

__attribute__((used)) static int FUNC5( int nfds, fd_set *rdset, fd_set *wrset, fd_set *exset,
                       struct timeval *timeout )
{
    struct vlc_thread *th = FUNC4( );

    int rc;

    if( th )
    {
        FUNC0( th->cancel_sock, rdset );

        nfds = FUNC1( nfds, th->cancel_sock + 1 );
    }

    rc = FUNC2( nfds, rdset, wrset, exset, timeout );

    FUNC3();

    return rc;

}