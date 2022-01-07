
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i_program_descriptors; int p_program_descriptors; } ;
typedef TYPE_1__ en50221_capmt_info_t ;


 int en50221_capmt_CADescriptorAppend (int *,int *,int const*,int ) ;

__attribute__((used)) static inline void en50221_capmt_AddCADescriptor( en50221_capmt_info_t *p_en,
                                                  const uint8_t *p_data, uint8_t i_data )
{
    en50221_capmt_CADescriptorAppend( &p_en->p_program_descriptors,
                                      &p_en->i_program_descriptors,
                                       p_data, i_data );
}
