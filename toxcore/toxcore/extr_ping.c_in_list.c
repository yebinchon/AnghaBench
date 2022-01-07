
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int uint16_t ;
struct TYPE_10__ {int ip_port; int timestamp; } ;
struct TYPE_11__ {TYPE_3__ assoc6; TYPE_3__ assoc4; int public_key; } ;
struct TYPE_8__ {scalar_t__ family; } ;
struct TYPE_9__ {TYPE_1__ ip; } ;
typedef TYPE_2__ IP_Port ;
typedef TYPE_3__ IPPTsPng ;
typedef TYPE_4__ Client_data ;


 scalar_t__ AF_INET ;
 int BAD_NODE_TIMEOUT ;
 scalar_t__ id_equal (int ,int const*) ;
 scalar_t__ ipport_equal (int *,TYPE_2__*) ;
 int is_timeout (int ,int ) ;

__attribute__((used)) static int in_list(const Client_data *list, uint16_t length, const uint8_t *public_key, IP_Port ip_port)
{
    unsigned int i;

    for (i = 0; i < length; ++i) {
        if (id_equal(list[i].public_key, public_key)) {
            const IPPTsPng *ipptp;

            if (ip_port.ip.family == AF_INET) {
                ipptp = &list[i].assoc4;
            } else {
                ipptp = &list[i].assoc6;
            }

            if (!is_timeout(ipptp->timestamp, BAD_NODE_TIMEOUT) && ipport_equal(&ipptp->ip_port, &ip_port))
                return 1;
        }
    }

    return 0;
}
