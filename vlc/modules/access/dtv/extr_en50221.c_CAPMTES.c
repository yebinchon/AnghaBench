
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int system_ids_t ;
struct TYPE_3__ {int i_stream_type; int i_es_pid; int i_descriptors; int p_descriptors; } ;
typedef TYPE_1__ en50221_capmt_es_info_t ;


 int CopyDescriptors (int ,int ,int const*,int*) ;
 int* xrealloc (int*,size_t) ;

__attribute__((used)) static uint8_t *CAPMTES( const en50221_capmt_es_info_t *p_es,
                         const system_ids_t *p_ids,
                         size_t i_capmt_size, size_t i_size,
                         uint8_t i_cmd, uint8_t *p_capmt )
{
    uint8_t *p_data;

    if ( i_size )
        p_data = xrealloc( p_capmt, i_capmt_size + 6 + i_size );
    else
        p_data = xrealloc( p_capmt, i_capmt_size + 5 );

    uint8_t *p_dest = &p_data[ i_capmt_size ];

    p_dest[0] = p_es->i_stream_type;
    p_dest[1] = p_es->i_es_pid >> 8;
    p_dest[2] = p_es->i_es_pid & 0xff;

    if ( i_size )
    {
        p_dest[3] = (i_size + 1) >> 8;
        p_dest[4] = (i_size + 1) & 0xff;
        p_dest[5] = i_cmd;

        CopyDescriptors( p_es->p_descriptors,
                         p_es->i_descriptors,
                         p_ids, &p_dest[6] );
    }
    else
    {
        p_dest[3] = 0;
        p_dest[4] = 0;
    }

    return p_data;
}
