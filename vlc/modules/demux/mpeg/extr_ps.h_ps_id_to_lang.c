
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_7__ {size_t i_es; TYPE_2__* es; } ;
typedef TYPE_3__ ps_psm_t ;
struct TYPE_5__ {int const* lang; } ;
struct TYPE_6__ {scalar_t__ i_id; TYPE_1__ desc; } ;



__attribute__((used)) static inline const uint8_t *ps_id_to_lang( const ps_psm_t *p_psm, uint16_t i_id )
{
    size_t i;
    for( i = 0; p_psm && i < p_psm->i_es; i++ )
    {
        if( p_psm->es[i].i_id == i_id )
            return p_psm->es[i].desc.lang;
    }
    return 0;
}
