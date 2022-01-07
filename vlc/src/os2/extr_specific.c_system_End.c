
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulCmd ;
typedef scalar_t__ ULONG ;
typedef int TID ;
typedef int HPIPE ;


 int DCWW_WAIT ;
 int DosClose (int ) ;
 scalar_t__ DosOpen (int ,int *,scalar_t__*,int ,int ,int ,int,int *) ;
 int DosSleep (int) ;
 int DosWaitNPipe (int ,int) ;
 int DosWaitThread (int *,int ) ;
 int DosWrite (int ,scalar_t__*,int,scalar_t__*) ;
 scalar_t__ ERROR_PIPE_BUSY ;
 scalar_t__ IPC_CMD_QUIT ;
 int OPEN_ACCESS_READWRITE ;
 int OPEN_ACTION_OPEN_IF_EXISTS ;
 int OPEN_FLAGS_FAIL_ON_ERROR ;
 int OPEN_SHARE_DENYREADWRITE ;
 int VLC_IPC_PIPE ;
 scalar_t__ _gettid () ;
 scalar_t__ tidIPCFirst ;
 int tidIPCHelper ;

void system_End(void)
{
    if( tidIPCFirst == _gettid())
    {
        HPIPE hpipe;
        ULONG ulAction;
        ULONG cbActual;
        ULONG rc;

        do
        {
            rc = DosOpen( VLC_IPC_PIPE, &hpipe, &ulAction, 0, 0,
                          OPEN_ACTION_OPEN_IF_EXISTS,
                          OPEN_ACCESS_READWRITE | OPEN_SHARE_DENYREADWRITE |
                          OPEN_FLAGS_FAIL_ON_ERROR,
                          ((void*)0) );

            if( rc == ERROR_PIPE_BUSY )
                DosWaitNPipe( VLC_IPC_PIPE, -1 );
            else if( rc )
                DosSleep( 1 );
        } while( rc );


        ULONG ulCmd = IPC_CMD_QUIT;
        DosWrite( hpipe, &ulCmd, sizeof( ulCmd ), &cbActual );

        DosClose( hpipe );

        TID tid = tidIPCHelper;
        DosWaitThread( &tid, DCWW_WAIT );
    }
}
