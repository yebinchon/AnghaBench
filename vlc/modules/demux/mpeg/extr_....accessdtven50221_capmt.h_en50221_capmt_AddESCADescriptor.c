
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i_descriptors; int p_descriptors; } ;
typedef TYPE_1__ en50221_capmt_es_info_t ;


 int en50221_capmt_CADescriptorAppend (int *,int *,int const*,int ) ;

__attribute__((used)) static inline void en50221_capmt_AddESCADescriptor( en50221_capmt_es_info_t *p_es,
                                                    const uint8_t *p_data, uint8_t i_data )
{
    en50221_capmt_CADescriptorAppend( &p_es->p_descriptors, &p_es->i_descriptors,
                                       p_data, i_data );
}
