
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int * str; } ;
typedef TYPE_1__ h16 ;
typedef int USHORT ;
typedef size_t DWORD ;


 scalar_t__ hex_to_int (int ) ;

__attribute__((used)) static USHORT h16tous(h16 component) {
    DWORD i;
    USHORT ret = 0;

    for(i = 0; i < component.len; ++i) {
        ret <<= 4;
        ret += hex_to_int(component.str[i]);
    }

    return ret;
}
