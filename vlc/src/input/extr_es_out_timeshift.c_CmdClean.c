
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_type; } ;
typedef TYPE_1__ ts_cmd_t ;






 int CmdCleanAdd (TYPE_1__*) ;
 int CmdCleanControl (TYPE_1__*) ;
 int CmdCleanSend (TYPE_1__*) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static void CmdClean( ts_cmd_t *p_cmd )
{
    switch( p_cmd->i_type )
    {
    case 131:
        CmdCleanAdd( p_cmd );
        break;
    case 128:
        CmdCleanSend( p_cmd );
        break;
    case 130:
        CmdCleanControl( p_cmd );
        break;
    case 129:
        break;
    default:
        vlc_assert_unreachable();
        break;
    }
}
