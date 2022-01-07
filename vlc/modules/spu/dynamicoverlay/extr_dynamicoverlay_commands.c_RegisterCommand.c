
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_9__ {size_t i_commands; TYPE_3__** pp_commands; } ;
typedef TYPE_2__ filter_sys_t ;
struct TYPE_10__ {size_t psz_command; int pf_unparse; int pf_execute; int pf_parser; int b_atomic; } ;
typedef TYPE_3__ commanddesc_t ;
struct TYPE_11__ {int pf_unparse; int pf_execute; int pf_parser; int b_atomic; int psz_command; } ;


 size_t ARRAY_SIZE (TYPE_4__*) ;
 scalar_t__ calloc (size_t,int) ;
 scalar_t__ malloc (int) ;
 int msg_Dbg (TYPE_1__*,char*,size_t) ;
 TYPE_4__* p_commands ;
 size_t strdup (int ) ;

void RegisterCommand( filter_t *p_filter )
{
    filter_sys_t *p_sys = p_filter->p_sys;

    p_sys->i_commands = ARRAY_SIZE(p_commands);
    p_sys->pp_commands = (commanddesc_t **) calloc( p_sys->i_commands, sizeof(commanddesc_t*) );
    if( !p_sys->pp_commands ) return;
    for( size_t i_index = 0; i_index < p_sys->i_commands; i_index ++ )
    {
        p_sys->pp_commands[i_index] = (commanddesc_t *) malloc( sizeof(commanddesc_t) );
        if( !p_sys->pp_commands[i_index] ) return;
        p_sys->pp_commands[i_index]->psz_command = strdup( p_commands[i_index].psz_command );
        p_sys->pp_commands[i_index]->b_atomic = p_commands[i_index].b_atomic;
        p_sys->pp_commands[i_index]->pf_parser = p_commands[i_index].pf_parser;
        p_sys->pp_commands[i_index]->pf_execute = p_commands[i_index].pf_execute;
        p_sys->pp_commands[i_index]->pf_unparse = p_commands[i_index].pf_unparse;
    }

    msg_Dbg( p_filter, "%zu commands are available", p_sys->i_commands );
    for( size_t i_index = 0; i_index < p_sys->i_commands; i_index++ )
        msg_Dbg( p_filter, "    %s", p_sys->pp_commands[i_index]->psz_command );
}
