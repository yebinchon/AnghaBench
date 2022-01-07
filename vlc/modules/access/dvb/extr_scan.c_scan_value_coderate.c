
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scan_coderate_t ;
const char *scan_value_coderate( scan_coderate_t c )
{
    switch( c )
    {
        case 128: return "0";
        case 138: return "1/2";
        case 137: return "2/3";
        case 136: return "3/4";
        case 135: return "3/5";
        case 134: return "4/5";
        case 133: return "5/6";
        case 132: return "7/8";
        case 131: return "8/9";
        case 130: return "9/10";
        case 129:
        default: return "";
    }
}
