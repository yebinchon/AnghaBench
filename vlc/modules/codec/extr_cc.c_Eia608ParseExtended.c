
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int eia608_t ;
typedef int eia608_status_t ;


 int Debug (int ) ;
 int EIA608_STATUS_CHANGED ;
 int Eia608Cursor (int *,int) ;
 int Eia608Write (int *,int) ;
 int assert (int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static eia608_status_t Eia608ParseExtended( eia608_t *h, uint8_t d1, uint8_t d2 )
{
    assert( d2 >= 0x20 && d2 <= 0x3f );
    assert( d1 == 0x12 || d1 == 0x13 );
    if( d1 == 0x12 )
        d2 += 0x70;
    else
        d2 += 0x90;

    Debug(printf("[EXT %x->'%c']", d2, d2));


    Eia608Cursor( h, -1 );
    Eia608Write( h, d2 );
    return EIA608_STATUS_CHANGED;
}
