
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ AsfObjectHelperHave (int const*,size_t,int *,size_t) ;

__attribute__((used)) static inline void AsfObjectHelperSkip( const uint8_t *p_peek, size_t i_peek, uint8_t **pp_data, size_t i_wanted )
{
    if( AsfObjectHelperHave( p_peek, i_peek, *pp_data, i_wanted ) )
        *pp_data += i_wanted;
    else
        *pp_data = (uint8_t*)&p_peek[i_peek];
}
