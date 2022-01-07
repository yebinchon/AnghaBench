
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__* pi_system_ids; } ;
typedef TYPE_1__ system_ids_t ;



__attribute__((used)) static bool CheckSystemID( const system_ids_t *p_ids, uint16_t i_id )
{
    int i = 0;
    if( !p_ids ) return 1;

    while ( p_ids->pi_system_ids[i] )
    {
        if ( p_ids->pi_system_ids[i] == i_id )
            return 1;
        i++;
    }

    return 0;
}
