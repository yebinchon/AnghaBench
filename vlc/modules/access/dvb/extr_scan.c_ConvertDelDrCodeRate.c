
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int scan_coderate_t ;


 int ConvertDelDrInnerFec (int) ;
 int SCAN_CODERATE_AUTO ;

__attribute__((used)) static scan_coderate_t ConvertDelDrCodeRate( uint8_t v )
{
    if( v > 0x04 )
        return SCAN_CODERATE_AUTO;
    else
        return ConvertDelDrInnerFec( v + 1 );
}
