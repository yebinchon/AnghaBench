
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int scan_coderate_t ;


 int SCAN_CODERATE_1_2 ;
 int SCAN_CODERATE_2_3 ;
 int SCAN_CODERATE_3_4 ;
 int SCAN_CODERATE_3_5 ;
 int SCAN_CODERATE_4_5 ;
 int SCAN_CODERATE_5_6 ;
 int SCAN_CODERATE_7_8 ;
 int SCAN_CODERATE_8_9 ;
 int SCAN_CODERATE_9_10 ;
 int SCAN_CODERATE_AUTO ;
 int SCAN_CODERATE_NONE ;

__attribute__((used)) static scan_coderate_t ConvertDelDrInnerFec( uint8_t v )
{
    switch(v)
    {
        default:
        case 0x0: return SCAN_CODERATE_AUTO;
        case 0x1: return SCAN_CODERATE_1_2;
        case 0x2: return SCAN_CODERATE_2_3;
        case 0x3: return SCAN_CODERATE_3_4;
        case 0x4: return SCAN_CODERATE_5_6;
        case 0x5: return SCAN_CODERATE_7_8;
        case 0x6: return SCAN_CODERATE_8_9;
        case 0x7: return SCAN_CODERATE_3_5;
        case 0x8: return SCAN_CODERATE_4_5;
        case 0x9: return SCAN_CODERATE_9_10;
        case 0xF: return SCAN_CODERATE_NONE;
    }
}
