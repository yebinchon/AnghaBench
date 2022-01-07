
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct command_t {struct command_t* next; int i_command; } ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ extension_t ;
struct TYPE_4__ {int wait; struct command_t* command; } ;


 int CMD_DEACTIVATE ;
 int FreeCommands (struct command_t*) ;
 struct command_t* calloc (int,int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_cond_signal (int *) ;

bool QueueDeactivateCommand( extension_t *p_ext )
{
    struct command_t *cmd = calloc( 1, sizeof( struct command_t ) );
    if( unlikely( cmd == ((void*)0) ) )
        return 0;

    if( p_ext->p_sys->command )
        FreeCommands( p_ext->p_sys->command->next );



    cmd->i_command = CMD_DEACTIVATE;
    if( p_ext->p_sys->command )
        p_ext->p_sys->command->next = cmd;
    else
        p_ext->p_sys->command = cmd;

    vlc_cond_signal( &p_ext->p_sys->wait );
    return 1;
}
