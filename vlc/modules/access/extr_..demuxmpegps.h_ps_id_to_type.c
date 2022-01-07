
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_5__ {size_t i_es; TYPE_1__* es; } ;
typedef TYPE_2__ ps_psm_t ;
struct TYPE_4__ {scalar_t__ i_id; int i_type; } ;



__attribute__((used)) static inline uint8_t ps_id_to_type( const ps_psm_t *p_psm, uint16_t i_id )
{
    size_t i;
    for( i = 0; p_psm && i < p_psm->i_es; i++ )
    {
        if( p_psm->es[i].i_id == i_id ) return p_psm->es[i].i_type;
    }
    return 0;
}
