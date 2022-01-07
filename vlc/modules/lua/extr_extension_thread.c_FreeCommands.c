
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_t {int i_command; struct command_t** data; struct command_t* next; } ;







 int free (struct command_t*) ;

__attribute__((used)) static void FreeCommands( struct command_t *command )
{
    if( !command ) return;
    struct command_t *next = command->next;
    switch( command->i_command )
    {
        case 132:
        case 130:
        case 131:
            break;

        case 128:
        case 129:
            free( command->data[0] );
            break;

        default:
            break;
    }
    free( command );
    FreeCommands( next );
}
