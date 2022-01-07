
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t i_es_count; TYPE_1__* p_es; scalar_t__ p_program_descriptors; } ;
typedef TYPE_2__ en50221_capmt_info_t ;
struct TYPE_4__ {scalar_t__ p_descriptors; } ;



__attribute__((used)) static bool CAPMTNeedsDescrambling( const en50221_capmt_info_t *p_info )
{
    if( p_info->p_program_descriptors )
        return 1;

    for( size_t i=0; i<p_info->i_es_count; i++ )
    {
        if( p_info->p_es[i].p_descriptors )
            return 1;
    }

    return 0;
}
