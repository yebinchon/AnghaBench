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
typedef  int /*<<< orphan*/  libvlc_int_t ;
typedef  int /*<<< orphan*/  i_len ;
typedef  int /*<<< orphan*/  i_argc ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  HPIPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ ERROR_PIPE_BUSY ; 
 int /*<<< orphan*/  IPCHelperThread ; 
 scalar_t__ IPC_CMD_ENQUEUE ; 
 scalar_t__ IPC_CMD_GO ; 
 int /*<<< orphan*/  NP_ACCESS_DUPLEX ; 
 int NP_READMODE_MESSAGE ; 
 int NP_TYPE_MESSAGE ; 
 int NP_WAIT ; 
 int OPEN_ACCESS_READWRITE ; 
 int /*<<< orphan*/  OPEN_ACTION_OPEN_IF_EXISTS ; 
 int OPEN_FLAGS_FAIL_ON_ERROR ; 
 int OPEN_SHARE_DENYREADWRITE ; 
 int /*<<< orphan*/  PRTYC_REGULAR ; 
 int /*<<< orphan*/  PRTYD_MAXIMUM ; 
 int /*<<< orphan*/  PRTYS_PROCESS ; 
 int /*<<< orphan*/  VLC_IPC_PIPE ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  hpipeIPC ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC13 (char const* const) ; 
 int FUNC14 (char*) ; 
 scalar_t__ FUNC15 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int tidIPCFirst ; 
 int tidIPCHelper ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC18 (char const* const,int /*<<< orphan*/ *) ; 

void FUNC19( libvlc_int_t *p_this, int i_argc, const char *const ppsz_argv[] )
{
    if( FUNC17( p_this, "high-priority" ) )
    {
        if( !FUNC3( PRTYS_PROCESS, PRTYC_REGULAR, PRTYD_MAXIMUM, 0 ) )
        {
            FUNC10( p_this, "raised process priority" );
        }
        else
        {
            FUNC10( p_this, "could not raise process priority" );
        }
    }

    if( FUNC17( p_this, "one-instance" )
        || ( FUNC17( p_this, "one-instance-when-started-from-file" )
             && FUNC17( p_this, "started-from-file" ) ) )
    {
        HPIPE hpipe;
        ULONG ulAction;
        ULONG rc;

        FUNC12( p_this, "one instance mode ENABLED");

        /* Use a named pipe to check if another instance is already running */
        for(;;)
        {
            rc = FUNC2( VLC_IPC_PIPE, &hpipe, &ulAction, 0, 0,
                          OPEN_ACTION_OPEN_IF_EXISTS,
                          OPEN_ACCESS_READWRITE | OPEN_SHARE_DENYREADWRITE |
                          OPEN_FLAGS_FAIL_ON_ERROR,
                          NULL );

            if( rc == ERROR_PIPE_BUSY )
                FUNC4( VLC_IPC_PIPE, -1 );
            else
                break;
        }

        if( rc )
        {
            rc = FUNC1( VLC_IPC_PIPE,  &hpipeIPC,
                                 NP_ACCESS_DUPLEX,
                                 NP_WAIT | NP_TYPE_MESSAGE |
                                 NP_READMODE_MESSAGE | 0x01,
                                 32768, 32768, 0 );
            if( rc )
            {
                /* Failed to create a named pipe. Just ignore the option and
                 * go on as normal. */
                FUNC11( p_this, "one instance mode DISABLED "
                         "(a named pipe couldn't be created)" );
                return;
            }

            /* We are the 1st instance. */

            /* Save the tid of the first instance */
            tidIPCFirst = FUNC7();

            /* Run the helper thread */
            tidIPCHelper = FUNC6( IPCHelperThread, NULL, 1024 * 1024,
                                         p_this );
            if( tidIPCHelper == -1 )
            {
                FUNC11( p_this, "one instance mode DISABLED "
                         "(IPC helper thread couldn't be created)");

                tidIPCFirst = -1;
            }
        }
        else
        {
            /* Another instance is running */
            ULONG ulCmd = FUNC17( p_this, "playlist-enqueue") ?
                              IPC_CMD_ENQUEUE : IPC_CMD_GO;
            ULONG cbActual;

            /* Write a command */
            FUNC5( hpipe, &ulCmd, sizeof( ulCmd ), &cbActual );

            /* We assume that the remaining parameters are filenames
             * and their input options */

            /* Write a count of arguments */
            FUNC5( hpipe, &i_argc, sizeof( i_argc ), &cbActual );

            for( int i_opt = 0; i_opt < i_argc; i_opt++ )
            {
                /* We need to resolve relative paths in this instance */
                char *mrl;
                if( FUNC15( ppsz_argv[ i_opt ], "://" ))
                    mrl = FUNC13( ppsz_argv[ i_opt ] );
                else
                    mrl = FUNC18( ppsz_argv[ i_opt ], NULL );

                if( !mrl )
                    mrl = ( char * )ppsz_argv[ i_opt ];

                size_t i_len = FUNC14( mrl ) + 1;

                /* Write a length of an argument */
                FUNC5( hpipe, &i_len, sizeof( i_len ), &cbActual );

                /* Write an argument */
                FUNC5( hpipe, mrl, i_len, &cbActual );

                if( mrl != ppsz_argv[ i_opt ])
                    FUNC9( mrl );
            }

            /* Close a named pipe of a client side */
            FUNC0( hpipe );

            /* Bye bye */
            FUNC16();
            FUNC8( 0 );
        }
    }
}