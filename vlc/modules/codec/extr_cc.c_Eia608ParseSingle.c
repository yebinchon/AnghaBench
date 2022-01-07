
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int eia608_t ;
typedef int eia608_status_t ;


 int EIA608_STATUS_CHANGED ;
 int Eia608Write (int *,int const) ;
 int assert (int) ;

__attribute__((used)) static eia608_status_t Eia608ParseSingle( eia608_t *h, const uint8_t dx )
{
    assert( dx >= 0x20 );
    Eia608Write( h, dx );
    return EIA608_STATUS_CHANGED;
}
