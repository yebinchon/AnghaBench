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
typedef  int /*<<< orphan*/  ulCmd ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  TID ;
typedef  int /*<<< orphan*/  HPIPE ;

/* Variables and functions */
 int /*<<< orphan*/  DCWW_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int,scalar_t__*) ; 
 scalar_t__ ERROR_PIPE_BUSY ; 
 scalar_t__ IPC_CMD_QUIT ; 
 int OPEN_ACCESS_READWRITE ; 
 int /*<<< orphan*/  OPEN_ACTION_OPEN_IF_EXISTS ; 
 int OPEN_FLAGS_FAIL_ON_ERROR ; 
 int OPEN_SHARE_DENYREADWRITE ; 
 int /*<<< orphan*/  VLC_IPC_PIPE ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ tidIPCFirst ; 
 int /*<<< orphan*/  tidIPCHelper ; 

void FUNC7(void)
{
    if( tidIPCFirst == FUNC6())
    {
        HPIPE hpipe;
        ULONG ulAction;
        ULONG cbActual;
        ULONG rc;

        do
        {
            rc = FUNC1( VLC_IPC_PIPE, &hpipe, &ulAction, 0, 0,
                          OPEN_ACTION_OPEN_IF_EXISTS,
                          OPEN_ACCESS_READWRITE | OPEN_SHARE_DENYREADWRITE |
                          OPEN_FLAGS_FAIL_ON_ERROR,
                          NULL );

            if( rc == ERROR_PIPE_BUSY )
                FUNC3( VLC_IPC_PIPE, -1 );
            else if( rc )
                FUNC2( 1 );
        } while( rc );

        /* Ask for IPCHelper to quit */
        ULONG ulCmd = IPC_CMD_QUIT;
        FUNC5( hpipe, &ulCmd, sizeof( ulCmd ), &cbActual );

        FUNC0( hpipe );

        TID tid = tidIPCHelper;
        FUNC4( &tid, DCWW_WAIT );
    }
}