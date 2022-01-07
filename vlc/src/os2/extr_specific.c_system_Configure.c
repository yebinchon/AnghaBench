
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulCmd ;
typedef int libvlc_int_t ;
typedef int i_len ;
typedef int i_argc ;
typedef scalar_t__ ULONG ;
typedef int HPIPE ;


 int DosClose (int ) ;
 scalar_t__ DosCreateNPipe (int ,int *,int ,int,int,int,int ) ;
 scalar_t__ DosOpen (int ,int *,scalar_t__*,int ,int ,int ,int,int *) ;
 int DosSetPriority (int ,int ,int ,int ) ;
 int DosWaitNPipe (int ,int) ;
 int DosWrite (int ,...) ;
 scalar_t__ ERROR_PIPE_BUSY ;
 int IPCHelperThread ;
 scalar_t__ IPC_CMD_ENQUEUE ;
 scalar_t__ IPC_CMD_GO ;
 int NP_ACCESS_DUPLEX ;
 int NP_READMODE_MESSAGE ;
 int NP_TYPE_MESSAGE ;
 int NP_WAIT ;
 int OPEN_ACCESS_READWRITE ;
 int OPEN_ACTION_OPEN_IF_EXISTS ;
 int OPEN_FLAGS_FAIL_ON_ERROR ;
 int OPEN_SHARE_DENYREADWRITE ;
 int PRTYC_REGULAR ;
 int PRTYD_MAXIMUM ;
 int PRTYS_PROCESS ;
 int VLC_IPC_PIPE ;
 int _beginthread (int ,int *,int,int *) ;
 int _gettid () ;
 int exit (int ) ;
 int free (char*) ;
 int hpipeIPC ;
 int msg_Dbg (int *,char*) ;
 int msg_Err (int *,char*) ;
 int msg_Info (int *,char*) ;
 char* strdup (char const* const) ;
 int strlen (char*) ;
 scalar_t__ strstr (char const* const,char*) ;
 int system_End () ;
 int tidIPCFirst ;
 int tidIPCHelper ;
 scalar_t__ var_InheritBool (int *,char*) ;
 char* vlc_path2uri (char const* const,int *) ;

void system_Configure( libvlc_int_t *p_this, int i_argc, const char *const ppsz_argv[] )
{
    if( var_InheritBool( p_this, "high-priority" ) )
    {
        if( !DosSetPriority( PRTYS_PROCESS, PRTYC_REGULAR, PRTYD_MAXIMUM, 0 ) )
        {
            msg_Dbg( p_this, "raised process priority" );
        }
        else
        {
            msg_Dbg( p_this, "could not raise process priority" );
        }
    }

    if( var_InheritBool( p_this, "one-instance" )
        || ( var_InheritBool( p_this, "one-instance-when-started-from-file" )
             && var_InheritBool( p_this, "started-from-file" ) ) )
    {
        HPIPE hpipe;
        ULONG ulAction;
        ULONG rc;

        msg_Info( p_this, "one instance mode ENABLED");


        for(;;)
        {
            rc = DosOpen( VLC_IPC_PIPE, &hpipe, &ulAction, 0, 0,
                          OPEN_ACTION_OPEN_IF_EXISTS,
                          OPEN_ACCESS_READWRITE | OPEN_SHARE_DENYREADWRITE |
                          OPEN_FLAGS_FAIL_ON_ERROR,
                          ((void*)0) );

            if( rc == ERROR_PIPE_BUSY )
                DosWaitNPipe( VLC_IPC_PIPE, -1 );
            else
                break;
        }

        if( rc )
        {
            rc = DosCreateNPipe( VLC_IPC_PIPE, &hpipeIPC,
                                 NP_ACCESS_DUPLEX,
                                 NP_WAIT | NP_TYPE_MESSAGE |
                                 NP_READMODE_MESSAGE | 0x01,
                                 32768, 32768, 0 );
            if( rc )
            {


                msg_Err( p_this, "one instance mode DISABLED "
                         "(a named pipe couldn't be created)" );
                return;
            }




            tidIPCFirst = _gettid();


            tidIPCHelper = _beginthread( IPCHelperThread, ((void*)0), 1024 * 1024,
                                         p_this );
            if( tidIPCHelper == -1 )
            {
                msg_Err( p_this, "one instance mode DISABLED "
                         "(IPC helper thread couldn't be created)");

                tidIPCFirst = -1;
            }
        }
        else
        {

            ULONG ulCmd = var_InheritBool( p_this, "playlist-enqueue") ?
                              IPC_CMD_ENQUEUE : IPC_CMD_GO;
            ULONG cbActual;


            DosWrite( hpipe, &ulCmd, sizeof( ulCmd ), &cbActual );





            DosWrite( hpipe, &i_argc, sizeof( i_argc ), &cbActual );

            for( int i_opt = 0; i_opt < i_argc; i_opt++ )
            {

                char *mrl;
                if( strstr( ppsz_argv[ i_opt ], "://" ))
                    mrl = strdup( ppsz_argv[ i_opt ] );
                else
                    mrl = vlc_path2uri( ppsz_argv[ i_opt ], ((void*)0) );

                if( !mrl )
                    mrl = ( char * )ppsz_argv[ i_opt ];

                size_t i_len = strlen( mrl ) + 1;


                DosWrite( hpipe, &i_len, sizeof( i_len ), &cbActual );


                DosWrite( hpipe, mrl, i_len, &cbActual );

                if( mrl != ppsz_argv[ i_opt ])
                    free( mrl );
            }


            DosClose( hpipe );


            system_End();
            exit( 0 );
        }
    }
}
