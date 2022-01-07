
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t h16_count; scalar_t__ elision; scalar_t__ elision_size; int ipv4_len; scalar_t__ ipv4; TYPE_3__* components; } ;
typedef TYPE_1__ ipv6_address ;
typedef int USHORT ;
typedef int UINT ;
struct TYPE_6__ {scalar_t__ str; } ;
typedef scalar_t__ INT ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 int ERR (char*,TYPE_1__ const*,int*,size_t) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int h16tous (TYPE_3__) ;
 int ipv4toui (scalar_t__,int ) ;

__attribute__((used)) static BOOL ipv6_to_number(const ipv6_address *address, USHORT number[8]) {
    DWORD i, cur_component = 0;
    BOOL already_passed_elision = FALSE;

    for(i = 0; i < address->h16_count; ++i) {
        if(address->elision) {
            if(address->components[i].str > address->elision && !already_passed_elision) {



                INT j;
                for(j = 0; j < address->elision_size; j+=2)
                    number[cur_component++] = 0;

                already_passed_elision = TRUE;
            }
        }

        number[cur_component++] = h16tous(address->components[i]);
    }


    if(!already_passed_elision && address->elision) {
        INT j;
        for(j = 0; j < address->elision_size; j+=2)
            number[cur_component++] = 0;
    }

    if(address->ipv4) {
        UINT value = ipv4toui(address->ipv4, address->ipv4_len);

        if(cur_component != 6) {
            ERR("(%p %p): Failed sanity check with %d\n", address, number, cur_component);
            return FALSE;
        }

        number[cur_component++] = (value >> 16) & 0xffff;
        number[cur_component] = value & 0xffff;
    }

    return TRUE;
}
