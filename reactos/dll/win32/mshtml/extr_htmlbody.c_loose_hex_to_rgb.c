
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int comp_value (char const*,int) ;
 int min (int,int) ;
 int strlenW (char const*) ;

__attribute__((used)) static int loose_hex_to_rgb(const WCHAR *hex)
{
    int len, dpc;

    len = strlenW(hex);
    if(*hex == '#') {
        hex++;
        len--;
    }
    if(len <= 3)
        return 0;

    dpc = min(len/3 + (len%3 ? 1 : 0), 4);
    return (comp_value(hex, dpc) << 16)
        | (comp_value(hex+dpc, dpc) << 8)
        | comp_value(hex+2*dpc, dpc);
}
