
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_6__ {int uint8; } ;
struct TYPE_7__ {int uint8; } ;
struct TYPE_8__ {scalar_t__ family; TYPE_1__ ip6; TYPE_2__ ip4; } ;
typedef TYPE_3__ IP ;


 int SIZE_IP4 ;
 int SIZE_IP6 ;
 scalar_t__ TOX_AF_INET ;
 scalar_t__ TOX_TCP_INET ;
 int memcpy (int ,scalar_t__ const*,int) ;
 int to_host_family (TYPE_3__*) ;

__attribute__((used)) static int ip_unpack(IP *target, const uint8_t *data, unsigned int data_size, _Bool disable_family_check)
{
    if (data_size < (1 + SIZE_IP6))
        return -1;

    target->family = data[0];

    if (target->family == TOX_AF_INET || target->family == TOX_TCP_INET) {
        memcpy(target->ip4.uint8, data + 1, SIZE_IP4);
    } else {
        memcpy(target->ip6.uint8, data + 1, SIZE_IP6);
    }

    if (!disable_family_check) {
        return to_host_family(target);
    } else {
        to_host_family(target);
        return 0;
    }
}
