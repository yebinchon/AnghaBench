
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int system_ids_t ;
struct TYPE_3__ {int i_program_number; int i_version; int i_program_descriptors; int p_program_descriptors; } ;
typedef TYPE_1__ en50221_capmt_info_t ;


 int CopyDescriptors (int ,int ,int const*,int*) ;
 int* xmalloc (int) ;

__attribute__((used)) static uint8_t *CAPMTHeader( const en50221_capmt_info_t *p_info,
                             const system_ids_t *p_ids, uint8_t i_list_mgt,
                             size_t i_size, uint8_t i_cmd )
{
    uint8_t *p_data;

    if ( i_size )
        p_data = xmalloc( 7 + i_size );
    else
        p_data = xmalloc( 6 );

    p_data[0] = i_list_mgt;
    p_data[1] = p_info->i_program_number >> 8;
    p_data[2] = p_info->i_program_number & 0xff;
    p_data[3] = ((p_info->i_version & 0x1f) << 1) | 0x1;

    if ( i_size )
    {
        p_data[4] = (i_size + 1) >> 8;
        p_data[5] = (i_size + 1) & 0xff;
        p_data[6] = i_cmd;

        CopyDescriptors( p_info->p_program_descriptors,
                         p_info->i_program_descriptors,
                         p_ids, &p_data[7] );
    }
    else
    {
        p_data[4] = 0;
        p_data[5] = 0;
    }

    return p_data;
}
