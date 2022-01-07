
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct rtattr {int dummy; } ;
struct TYPE_10__ {scalar_t__ protocol; unsigned int n_containers; TYPE_7__* hdr; TYPE_5__* containers; int sealed; } ;
typedef TYPE_1__ sd_netlink_message ;
typedef int sd_netlink ;
struct TYPE_12__ {int nlmsg_type; } ;
struct TYPE_11__ {int const* type_system; int attributes; } ;
typedef int NLTypeSystem ;
typedef int NLType ;


 int EINVAL ;
 scalar_t__ NETLINK_GENERIC ;
 scalar_t__ NETLINK_TYPE_NESTED ;
 int NLMSG_ALIGN (size_t) ;
 scalar_t__ NLMSG_DATA (TYPE_7__*) ;
 int NLMSG_PAYLOAD (TYPE_7__*,size_t) ;
 int assert (TYPE_7__*) ;
 int assert_return (TYPE_1__*,int ) ;
 int mfree (int ) ;
 int netlink_container_parse (TYPE_1__*,TYPE_5__*,struct rtattr*,int ) ;
 int rtnl_message_seal (TYPE_1__*) ;
 size_t type_get_size (int const*) ;
 scalar_t__ type_get_type (int const*) ;
 int type_get_type_system (int const*,int const**) ;
 int type_system_root_get_type (int *,int const**,int ) ;

int sd_netlink_message_rewind(sd_netlink_message *m, sd_netlink *genl) {
        const NLType *nl_type;
        uint16_t type;
        size_t size;
        unsigned i;
        int r;

        assert_return(m, -EINVAL);
        assert_return(genl || m->protocol != NETLINK_GENERIC, -EINVAL);


        if (!m->sealed)
                rtnl_message_seal(m);

        for (i = 1; i <= m->n_containers; i++)
                m->containers[i].attributes = mfree(m->containers[i].attributes);

        m->n_containers = 0;

        if (m->containers[0].attributes)

                return 0;

        assert(m->hdr);

        r = type_system_root_get_type(genl, &nl_type, m->hdr->nlmsg_type);
        if (r < 0)
                return r;

        type = type_get_type(nl_type);
        size = type_get_size(nl_type);

        if (type == NETLINK_TYPE_NESTED) {
                const NLTypeSystem *type_system;

                type_get_type_system(nl_type, &type_system);

                m->containers[0].type_system = type_system;

                r = netlink_container_parse(m,
                                            &m->containers[m->n_containers],
                                            (struct rtattr*)((uint8_t*)NLMSG_DATA(m->hdr) + NLMSG_ALIGN(size)),
                                            NLMSG_PAYLOAD(m->hdr, size));
                if (r < 0)
                        return r;
        }

        return 0;
}
