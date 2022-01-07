
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_type; int i_priority; int b_forced; int psz_uri; } ;
typedef TYPE_1__ input_item_slave_t ;
typedef enum slave_type { ____Placeholder_slave_type } slave_type ;
typedef enum slave_priority { ____Placeholder_slave_priority } slave_priority ;


 TYPE_1__* malloc (scalar_t__) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

input_item_slave_t *input_item_slave_New(const char *psz_uri, enum slave_type i_type,
                                       enum slave_priority i_priority)
{
    if( !psz_uri )
        return ((void*)0);

    input_item_slave_t *p_slave = malloc( sizeof( *p_slave ) + strlen( psz_uri ) + 1 );
    if( !p_slave )
        return ((void*)0);

    p_slave->i_type = i_type;
    p_slave->i_priority = i_priority;
    p_slave->b_forced = 0;
    strcpy( p_slave->psz_uri, psz_uri );

    return p_slave;
}
