
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 char const** rgpsz_ATSC_A53_service_types ;

__attribute__((used)) static const char * ATSC_A53_get_service_type( uint8_t i_type )
{
    if( i_type == 0 || i_type > 5 )
        return ((void*)0);
    return rgpsz_ATSC_A53_service_types[i_type - 1];
}
