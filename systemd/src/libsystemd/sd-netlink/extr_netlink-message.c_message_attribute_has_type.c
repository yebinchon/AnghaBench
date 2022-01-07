
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_6__ {size_t n_containers; TYPE_1__* containers; } ;
typedef TYPE_2__ sd_netlink_message ;
struct TYPE_5__ {int type_system; } ;
typedef int NLType ;


 int EINVAL ;
 int assert (TYPE_2__*) ;
 size_t type_get_size (int const*) ;
 scalar_t__ type_get_type (int const*) ;
 int type_system_get_type (int ,int const**,scalar_t__) ;

__attribute__((used)) static int message_attribute_has_type(sd_netlink_message *m, size_t *out_size, uint16_t attribute_type, uint16_t data_type) {
        const NLType *type;
        int r;

        assert(m);

        r = type_system_get_type(m->containers[m->n_containers].type_system, &type, attribute_type);
        if (r < 0)
                return r;

        if (type_get_type(type) != data_type)
                return -EINVAL;

        if (out_size)
                *out_size = type_get_size(type);
        return 0;
}
