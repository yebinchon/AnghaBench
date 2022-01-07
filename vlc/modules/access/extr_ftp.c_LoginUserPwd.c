
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int access_sys_t ;


 int _ (char*) ;
 int free (char*) ;
 scalar_t__ ftp_RecvCommand (int *,int *,int*,int *) ;
 scalar_t__ ftp_SendCommand (int *,int *,char*,char const*) ;
 int msg_Dbg (int *,char*) ;
 int msg_Err (int *,char*) ;
 int msg_Warn (int *,char*) ;
 char* var_InheritString (int *,char*) ;
 int vlc_dialog_display_error (int *,int ,char*,int ) ;

__attribute__((used)) static int LoginUserPwd( vlc_object_t *p_access, access_sys_t *p_sys,
                         const char *psz_user, const char *psz_pwd,
                         bool *p_logged )
{
    int i_answer;


    if( ftp_SendCommand( p_access, p_sys, "USER %s", psz_user ) < 0 ||
        ftp_RecvCommand( p_access, p_sys, &i_answer, ((void*)0) ) < 0 )
        return -1;

    switch( i_answer / 100 )
    {
        case 2:

            if ( i_answer == 232 )
                msg_Dbg( p_access, "user accepted and authenticated" );
            else
                msg_Dbg( p_access, "user accepted" );
            break;
        case 3:
            msg_Dbg( p_access, "password needed" );

            if( ftp_SendCommand( p_access, p_sys, "PASS %s", psz_pwd ) < 0 ||
                ftp_RecvCommand( p_access, p_sys, &i_answer, ((void*)0) ) < 0 )
                return -1;

            switch( i_answer / 100 )
            {
                case 2:
                    msg_Dbg( p_access, "password accepted" );
                    break;
                case 3:
                {
                    char *psz;
                    msg_Dbg( p_access, "account needed" );
                    psz = var_InheritString( p_access, "ftp-account" );
                    if( ftp_SendCommand( p_access, p_sys, "ACCT %s",
                                         psz ) < 0 ||
                        ftp_RecvCommand( p_access, p_sys, &i_answer, ((void*)0) ) < 0 )
                    {
                        free( psz );
                        return -1;
                    }
                    free( psz );

                    if( i_answer / 100 != 2 )
                    {
                        msg_Err( p_access, "account rejected" );
                        vlc_dialog_display_error( p_access,
                          _("Network interaction failed"),
                          "%s", _("Your account was rejected.") );
                        return -1;
                    }
                    msg_Dbg( p_access, "account accepted" );
                    break;
                }

                default:
                    msg_Warn( p_access, "password rejected" );
                    *p_logged = 0;
                    return 0;
            }
            break;
        default:
            msg_Warn( p_access, "user rejected" );
            *p_logged = 0;
            return 0;
    }

    *p_logged = 1;
    return 0;
}
